using DTOs.GetEmergency;
using DTOs.Response;
using DTOs.WriteAppointments;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public interface IAppointmentService
    {
        public Task<ActionAppointmentDTO> InsertAppointment(InsertAppointmentDTO insertAppointmentDTO);
        public Task<ActionAppointmentDTO> UpdateAppointment(UpdateAppointmentDTO updateAppointmentDTO);
        public Task<ActionAppointmentDTO> DeleteAppointment(DeleteAppointmentDTO deleteAppointmentDTO);
        public Task<IEnumerable<EmergencyAppointmentDTO>> GetEmergencyAppointments();
    }
}
