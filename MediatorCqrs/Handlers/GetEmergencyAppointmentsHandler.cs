using DTOs.GetEmergency;
using MediatorCqrs.Queries;
using MediatR;
using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatorCqrs.Handlers
{
    public class GetEmergencyAppointmentsHandler : IRequestHandler<GetEmergencyAppointmentsQuery, IEnumerable<EmergencyAppointmentDTO>>
    {
        private readonly IAppointmentService _service;

        public GetEmergencyAppointmentsHandler(IAppointmentService service)
        {
            _service = service; 
        }
        public async  Task<IEnumerable<EmergencyAppointmentDTO>> Handle(GetEmergencyAppointmentsQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetEmergencyAppointments();
        }
    }
}
