using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using DapperRepositories.Context;
using DTOs.GetAppointments;

namespace DapperRepositories.Repository
{
    public class Repository : IRepository
    {
        private readonly IDapperContext _context;

        public Repository(IDapperContext context)
        {
            _context = context;
        }

        public async Task<int> DeleteAsync<T>(string command, object parms)
        {
            using(var connection = _context.CreateConnection())
            {
                var result= await connection.ExecuteAsync(command, parms,
                    commandType: System.Data.CommandType.StoredProcedure);
                _context.CloseConnection(connection);
                return result;
            }
        }

        public async Task<List<T>> GetAllAsync<T>(string query, object parms)
        {
            using (var connection = _context.CreateConnection())
            {
                var result = await connection.QueryAsync<T>(query, parms);
                _context.CloseConnection(connection);
                return result.ToList();
            }
        }

        public async Task<T> GetAsync<T>(string query, object parms)
        {
            using (var connection = _context.CreateConnection())
            {
                var result = await connection.QueryAsync<T>(query, parms);
                _context.CloseConnection(connection);
                return result.First();
            }
        }

        public async Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsByJmbg(string query, string jmbg)
        {
            using (var connection = _context.CreateConnection())
            {
                var result = await connection.QueryAsync<GetPersonWithAppointmentsDTO,GetAppointmentDTO,GetPersonWithAppointmentsDTO>(query,
                    param: new {jmbg},map: (person, appointment) =>
                    {
                        person.Appointments.Add(appointment);
                        return person;
                    },splitOn:"AppointmentId"
                    );
                _context.CloseConnection(connection);
                var person = result.GroupBy(o => o.PersonId).Select(g =>
                {
                    var group = g.First();
                    group.Appointments = g.Select(o => o.Appointments.Single()).ToList();
                    return group;
                });
                return person.First();
            }
        }

        public async Task<int> InsertAsync<T>(string command, object parms)
        {
            using (var connection = _context.CreateConnection())
            {
                var result = await connection.ExecuteAsync(command, parms,
                    commandType: System.Data.CommandType.StoredProcedure);
                _context.CloseConnection(connection);
                return result;
            }
        }

        public async Task<int> UpdateAsync<T>(string command, object parms)
        {
            using (var connection = _context.CreateConnection())
            {
                var result = await connection.ExecuteAsync(command, parms,
                    commandType: System.Data.CommandType.StoredProcedure);
                _context.CloseConnection(connection);
                return result;
            }
        }
    }
}
