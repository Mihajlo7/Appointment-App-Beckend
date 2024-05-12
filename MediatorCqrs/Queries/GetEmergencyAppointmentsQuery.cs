using DTOs.GetEmergency;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatorCqrs.Queries
{
    public record GetEmergencyAppointmentsQuery() : IRequest<IEnumerable<EmergencyAppointmentDTO>>
    {
    }
}
