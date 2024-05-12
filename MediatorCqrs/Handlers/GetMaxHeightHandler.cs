using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperRepositories;
using DTOs.GetMaxHeight;
using MediatorCqrs.Queries;
using MediatR;
using Services;

namespace MediatorCqrs.Handlers
{
    public class GetMaxHeightHandler : IRequestHandler<GetMaxHeightQuery, GetMaxHeightDTO>
    {
        private readonly IPersonService _personService;

        public GetMaxHeightHandler(IPersonService personService)
        {
            _personService = personService;
        }
        public async Task<GetMaxHeightDTO> Handle(GetMaxHeightQuery request, CancellationToken cancellationToken)
        {
            return await _personService.GetMaxHeightAsync();
        }
    }
}
