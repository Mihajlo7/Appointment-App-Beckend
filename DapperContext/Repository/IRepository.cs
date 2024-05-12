using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetAppointments;

namespace DapperRepositories.Repository
{
    public interface IRepository
    {
        Task<T> GetAsync<T>(string query,object parms);
        Task<List<T>> GetAllAsync<T>(string query, object parms=null);
        Task<int> InsertAsync<T>(string command, object parms);
        Task<int> UpdateAsync<T>(string command, object parms);
        Task<int> DeleteAsync<T>(string command, object parms);

        Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsByJmbg(string query, string jmbg);
    }
}
