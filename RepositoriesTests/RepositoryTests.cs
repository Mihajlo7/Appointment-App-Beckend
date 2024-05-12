using DapperRepositories.Repository;
using DTOs.Response;
using DTOs.WriteAppointments;
using Moq;
using Services.impl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace RepositoriesTests
{
    public class RepositoryTests
    {
        private readonly Mock<IRepository> _mockService = new();

        [Fact]
        public async void Insert_Appointment_Good_Test()
        {
            var expected = new ActionAppointmentDTO
            {
                Title = "Success",
                Message = "The Appointment has been created !"
            };
            var expectedRes = 1;
            var newAppointment = new InsertAppointmentDTO
            {
                Jmbg = "0406000710063",
                DoctorFirstName = "Marko",
                DoctorLastName = "Marin",
                DateAppointment = new DateTime(day: 12, month: 9, year: 2024),
                TimeAppointment = "12:00"
            };

            _mockService.Setup(s => s.InsertAsync<InsertAppointmentDTO>(It.IsAny<string>(), It.IsAny<InsertAppointmentDTO>()))
                .ReturnsAsync(expectedRes);

            var appointmentService = new AppointmentService(_mockService.Object);
            var actual = await appointmentService.InsertAppointment(newAppointment);


            Assert.Equal(expected.Title, actual.Title);
            Assert.Equal(expected.Message, actual.Message);
        }

        [Fact]
        public async void Delete_Appointment_GoodTest()
        {
            var expected = new ActionAppointmentDTO
            {
                Title = "Success",
                Message = "The Appointment has been deleted !"
            };

            var expectedRes = 1;
            var deletedAppointment = new DeleteAppointmentDTO
            {
                Jmbg = "0406000710063",
                AppointmentId = Guid.NewGuid(),
            };

            _mockService.Setup(s => s.DeleteAsync<DeleteAppointmentDTO>(It.IsAny<string>(), It.IsAny<InsertAppointmentDTO>()))
                .ReturnsAsync(expectedRes);

            var appointmentService = new AppointmentService(_mockService.Object);

            var actual = await appointmentService.DeleteAppointment(deletedAppointment);

            Assert.Equal(expected.Title, actual.Title);
            Assert.Equal(expected.Message, actual.Message);
        }
    }
}
