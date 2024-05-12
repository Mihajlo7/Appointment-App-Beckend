using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetAppointments;
using MediatorCqrs.Queries;
using MediatR;
using Services;

namespace MediatorCqrs.Handlers
{
    public class GetPersonByJmbgHandler : IRequestHandler<GetPersonByJmbgQuery, GetPersonWithAppointmentsDTO>
    {
        private readonly IPersonService _personService;

        public GetPersonByJmbgHandler(IPersonService personService)
        {
            _personService = personService;
        }
        public async Task<GetPersonWithAppointmentsDTO> Handle(GetPersonByJmbgQuery request, CancellationToken cancellationToken)
        {
            return await _personService.GetPersonWithAppointmentsAsync(request.jmbg);
        }
    }
}
