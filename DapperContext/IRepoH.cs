using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetAppointments;
using DTOs.GetMaxHeight;
using DTOs.GetOverweightPeople;
using DTOs.Response;
using DTOs.WriteAppointments;

namespace DapperRepositories
{
    public interface IRepoH
    {
        public Task<GetMaxHeightDTO> GetMaxHeightAsync();
        public Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsViewAsync();
        public Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsDTOFunctionAsync();
        public Task<IEnumerable<OverweightPeopleDTO>> GetOverweightPeopleViewAsync();
        public Task<IEnumerable<OverweightPeopleDTO>> GetOverweightPeopleFunctionAsync();
        public Task<ActionAppointmentDTO> InsertAppointmentAsync(InsertAppointmentDTO insertAppointmentDTO);
        public Task<ActionAppointmentDTO> UpdateAppointmentAsync(UpdateAppointmentDTO updateAppointmentDTO);
        public Task<ActionAppointmentDTO> DeleteAppointmentAsync(DeleteAppointmentDTO deleteAppointmentDTO);
    }
}
