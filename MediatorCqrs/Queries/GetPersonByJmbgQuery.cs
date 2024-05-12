using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetAppointments;
using MediatR;

namespace MediatorCqrs.Queries
{
    public record GetPersonByJmbgQuery(string jmbg):IRequest<GetPersonWithAppointmentsDTO>;
    
}
