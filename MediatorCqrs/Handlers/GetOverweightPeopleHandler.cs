using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories;
using DTOs.GetOverweightPeople;
using MediatorCqrs.Queries;
using MediatR;
using Services;

namespace MediatorCqrs.Handlers
{
    public class GetOverweightPeopleHandler : IRequestHandler<GetOverweightQuery, IEnumerable<OverweightPeopleDTO>>
    {
        private readonly IPersonService _personService;

        public GetOverweightPeopleHandler(IPersonService personService)
        {
            _personService = personService;
        }
        public async Task<IEnumerable<OverweightPeopleDTO>> Handle(GetOverweightQuery request, CancellationToken cancellationToken)
        {
            return await _personService.GetOverweightPeopleAsync();
        }
    }
}
