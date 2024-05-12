using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories;
using DTOs.Response;
using DTOs.WriteAppointments;
using MediatorCqrs.Commands;
using MediatR;
using Services;

namespace MediatorCqrs.Handlers
{
    public class InsertAppointmentHandler : IRequestHandler<InsertAppointmentCommand, ActionAppointmentDTO>
    {
        private readonly IAppointmentService _service;

        public InsertAppointmentHandler(IAppointmentService service)
        {
            _service = service;
        }
        public async Task<ActionAppointmentDTO> Handle(InsertAppointmentCommand request, CancellationToken cancellationToken)
        {
            return await _service.InsertAppointment(request.InsertAppointmentDTO);
        }
    }
}
