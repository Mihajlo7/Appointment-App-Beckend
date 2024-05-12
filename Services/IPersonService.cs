using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetAppointments;
using DTOs.GetMaxHeight;
using DTOs.GetOverweightPeople;

namespace Services
{
    public interface IPersonService
    {
        Task<List<OverweightPeopleDTO>> GetOverweightPeopleAsync();
        Task<GetMaxHeightDTO> GetMaxHeightAsync();
        Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsAsync(string jmbg);
    }
}
