using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories;
using DTOs.Response;
using MediatorCqrs.Commands;
using MediatR;
using Services;

namespace MediatorCqrs.Handlers
{
    public class UpdateAppointmentHandler : IRequestHandler<UpdateAppointmentCommand, ActionAppointmentDTO>
    {
        private readonly IAppointmentService _service;

        public UpdateAppointmentHandler(IAppointmentService service)
        {
            _service = service;
        }
        public async Task<ActionAppointmentDTO> Handle(UpdateAppointmentCommand request, CancellationToken cancellationToken)
        {
            return await _service.UpdateAppointment(request.UpdateAppointmentDTO);
        }
    }
}
