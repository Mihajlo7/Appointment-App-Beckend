using Dapper;
using DapperRepositories.Repository;
using DTOs.GetEmergency;
using DTOs.Response;
using DTOs.WriteAppointments;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;

namespace Services.impl
{
    public class AppointmentService : IAppointmentService
    {
        private readonly IRepository _repository;

        public AppointmentService(IRepository repository)
        {
            _repository = repository; 
        }

        public async  Task<ActionAppointmentDTO> DeleteAppointment(DeleteAppointmentDTO deleteAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg", deleteAppointmentDTO.Jmbg);
            parameters.Add("AppointmentId", deleteAppointmentDTO.AppointmentId);

            await _repository.DeleteAsync<DeleteAppointmentDTO>("dbo.del_Appointment", parameters);

            return new ActionAppointmentDTO
            {
                Title = "Success",
                Message = "The Appointment has been deleted !"
            };
        }

        public async Task<IEnumerable<EmergencyAppointmentDTO>> GetEmergencyAppointments()
        {
            string query = "SELECT * FROM dbo.fn_Emergency_Appointments()";
            return await _repository.GetAllAsync<EmergencyAppointmentDTO>(query);
        }

        public async Task<ActionAppointmentDTO> InsertAppointment(InsertAppointmentDTO insertAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg", insertAppointmentDTO.Jmbg);
            parameters.Add("DoctorFirstName", insertAppointmentDTO.DoctorFirstName);
            parameters.Add("DoctorLastName", insertAppointmentDTO.DoctorLastName);
            parameters.Add("DateAppointment", insertAppointmentDTO.DateAppointment);
            parameters.Add("TimeAppointment", insertAppointmentDTO.TimeAppointment);

            await _repository.InsertAsync<InsertAppointmentDTO>("dbo.ins_Appointment",parameters);

            return new ActionAppointmentDTO
            {
                Title = "Success",
                Message = "The Appointment has been created !"
            };
        }

        public async Task<ActionAppointmentDTO> UpdateAppointment(UpdateAppointmentDTO updateAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg", updateAppointmentDTO.Jmbg);
            parameters.Add("DoctorFirstName", updateAppointmentDTO.DoctorFirstName);
            parameters.Add("DoctorLastName", updateAppointmentDTO.DoctorLastName);
            parameters.Add("DateAppointment", updateAppointmentDTO.DateAppointment);
            parameters.Add("TimeAppointment", updateAppointmentDTO.TimeAppointment);
            parameters.Add("AppointmentId", updateAppointmentDTO.AppointmentId);

            await _repository.UpdateAsync<UpdateAppointmentDTO>("dbo.upd_Appointment", parameters);

            return new ActionAppointmentDTO
            {
                Title = "Success",
                Message = "The Appointment has been updated !"
            };
        }
    }
}
