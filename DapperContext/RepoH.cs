using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using DapperRepositories.Context;
using DapperRepositories.SqlQueries;
using DTOs.GetAppointments;
using DTOs.GetMaxHeight;
using DTOs.GetOverweightPeople;
using DTOs.Response;
using DTOs.WriteAppointments;
using GlobalExceptionHandling.ExceptionModels;

namespace DapperRepositories
{
    public class RepoH : IRepoH
    {
        private readonly IDapperContext _dapperContext;

        public RepoH(IDapperContext dapperContext)
        {
            _dapperContext = dapperContext;
        }

        public async Task<ActionAppointmentDTO> DeleteAppointmentAsync(DeleteAppointmentDTO deleteAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg",deleteAppointmentDTO.Jmbg);
            parameters.Add("AppointmentId", deleteAppointmentDTO.AppointmentId);

            try
            {
                using(var connection = _dapperContext.CreateConnection())
                {
                    var result = await connection.ExecuteAsync("dbo.del_Appointment", parameters,
                        commandType: System.Data.CommandType.StoredProcedure);
                    _dapperContext.CloseConnection(connection);
                    return new ActionAppointmentDTO
                    {
                        Title = "Success",
                        Message = "The Appointment has been deleted !"
                    };
                }
            }catch (Exception ex) { throw new DbException(ex.Message); }
        }

        public async Task<GetMaxHeightDTO> GetMaxHeightAsync()
        {
            string query = Scripts.fnMaxHeight;

            using(var connection=  _dapperContext.CreateConnection())
            {
                var maxHeight = await connection.QueryAsync<GetMaxHeightDTO>(query);
                return maxHeight.First();
            }
        }

        public async Task<IEnumerable<OverweightPeopleDTO>> GetOverweightPeopleFunctionAsync()
        {
            string query = Scripts.fnOverweightPeople;

            using (var connection = _dapperContext.CreateConnection())
            {
                var overweight = await connection.QueryAsync<OverweightPeopleDTO>(query);
                _dapperContext.CloseConnection(connection);
                return overweight;
            }
        }

        public async Task<IEnumerable<OverweightPeopleDTO>> GetOverweightPeopleViewAsync()
        {
            string query = Scripts.viewOverweightPeople;

            using(var connection = _dapperContext.CreateConnection())
            {
                var overweight= await connection.QueryAsync<OverweightPeopleDTO>(query);
                _dapperContext.CloseConnection(connection);
                return overweight;
            }
        }

        public Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsDTOFunctionAsync()
        {
            throw new NotImplementedException();
        }

        public Task<GetPersonWithAppointmentsDTO> GetPersonWithAppointmentsViewAsync()
        {
            throw new NotImplementedException();
        }

        public async Task<ActionAppointmentDTO> InsertAppointmentAsync(InsertAppointmentDTO insertAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg", insertAppointmentDTO.Jmbg);
            parameters.Add("DoctorFirstName", insertAppointmentDTO.DoctorFirstName);
            parameters.Add("DoctorLastName", insertAppointmentDTO.DoctorLastName);
            parameters.Add("DateAppointment", insertAppointmentDTO.DateAppointment);
            parameters.Add("TimeAppointment", insertAppointmentDTO.TimeAppointment);
            try
            {
                using (var connection = _dapperContext.CreateConnection())
                {
                    var result =
                    await connection.ExecuteAsync("dbo.ins_Appointment", parameters,
                    commandType: System.Data.CommandType.StoredProcedure);
                    _dapperContext.CloseConnection(connection);
                    return new ActionAppointmentDTO
                    {
                        Title = "Success",
                        Message = "The Appointment has been created !"
                    };
                }
            } catch (Exception ex)
            {
                throw new DbException(ex.Message);
            }

        }

        public async Task<ActionAppointmentDTO> UpdateAppointmentAsync(UpdateAppointmentDTO updateAppointmentDTO)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Jmbg", updateAppointmentDTO.Jmbg);
            parameters.Add("DoctorFirstName", updateAppointmentDTO.DoctorFirstName);
            parameters.Add("DoctorLastName", updateAppointmentDTO.DoctorLastName);
            parameters.Add("DateAppointment", updateAppointmentDTO.DateAppointment);
            parameters.Add("TimeAppointment", updateAppointmentDTO.TimeAppointment);
            parameters.Add("AppointmentId", updateAppointmentDTO.AppointmentId);

            try
            {
                using (var connection = _dapperContext.CreateConnection())
                {
                    var result = await connection.ExecuteAsync("dbo.upd_Appointment", parameters,
                        commandType: System.Data.CommandType.StoredProcedure);
                    _dapperContext.CloseConnection(connection);
                    return new ActionAppointmentDTO
                    {
                        Title = "Success",
                        Message = "The Appointment has been updated !"
                    };
                }
            }catch (Exception ex) { throw new DbException(ex.Message); }
        }
    }
}
