using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories.Repository;
using DTOs.GetAppointments;
using DTOs.GetMaxHeight;
using DTOs.GetOverweightPeople;

namespace Services.impl
{
    public class PersonService : IPersonService
    {
        private readonly IRepository _repository;

        public PersonService(IRepository repository)
        {
            _repository = repository; 
        }

        public async Task<GetMaxHeightDTO> GetMaxHeightAsync()
        {
            string query = "SELECT dbo.fn_Max_Height() \"MaxHeight\"";
            return await _repository.GetAsync<GetMaxHeightDTO>(query,null);
        }

        public async Task<List<OverweightPeopleDTO>> GetOverweightPeopleAsync()
        {
            string query= "SELECT * FROM dbo.fn_Overweight_People()";
            return await _repository.GetAllAsync<OverweightPeopleDTO>(query);
        }

        public async Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsAsync(string jmbg)
        {
            string query = "SELECT * FROM dbo.fn_GetAllAppointments_ByJMBG(@jmbg)";
            return await _repository.GetPersonWithAppointmentsByJmbg(query,jmbg);
        }
    }
}
