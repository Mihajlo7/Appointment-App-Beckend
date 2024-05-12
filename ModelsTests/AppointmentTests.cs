using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using Xunit;

namespace ModelsTests
{
    public class AppointmentTests
    {
        [Theory]
        [InlineData("Nikola", "Marin", "2024-05-23", "12:15")]
        public void ValidDoctorAppointment(string firstName, string lastName, string date, string time)
        {
            // Arrange
            var appointment = new Appointment
            {
                FirstNameDoctor = firstName,
                LastNameDoctor = lastName,
                DateAppointment = DateTime.Parse(date),
                TimeAppointment = TimeSpan.Parse(time)
        };

            // Act
            var validationResults = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(appointment, new ValidationContext(appointment), validationResults, true);

            // Assert
            Assert.Empty(validationResults);
        }

        [Theory]
        [InlineData("Nikola", "Marin", "2023-05-03", "08:00", "Date of Appointment should be after today")]
        [InlineData("nikola", "Marin", "2024-05-23", "08:00", "First Name should start with upper letter")]
        [InlineData("Nikola", "marin", "2024-05-23", "08:00", "Last Name should start with upper letter")]
        public void InvalidDoctorAppointment(string firstName, string lastName, string date, string time, string expectedErrorMessage)
        {
            // Arrange
            var appointment = new Appointment
            {
                FirstNameDoctor = firstName,
                LastNameDoctor = lastName,
                DateAppointment = DateTime.Parse(date),
                TimeAppointment = TimeSpan.Parse(time)
            };

            // Act
            var validationResults = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(appointment, new ValidationContext(appointment), validationResults, true);

            // Assert
            Assert.False(isValid);
            Assert.NotEmpty(validationResults);
            Assert.Contains(validationResults, vr => vr.ErrorMessage == expectedErrorMessage);
        }
    }
}
