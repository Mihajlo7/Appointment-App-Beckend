using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetOverweightPeople;
using MediatR;

namespace MediatorCqrs.Queries
{
    public record GetOverweightQuery() : IRequest<IEnumerable<OverweightPeopleDTO>>;
}
