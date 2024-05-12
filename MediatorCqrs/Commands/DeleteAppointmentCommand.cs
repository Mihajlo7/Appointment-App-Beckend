using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.Response;
using DTOs.WriteAppointments;
using MediatR;

namespace MediatorCqrs.Commands
{
    public record DeleteAppointmentCommand(DeleteAppointmentDTO deleteAppointmentDTO): IRequest<ActionAppointmentDTO>;
}
