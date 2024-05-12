using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTOs.GetMaxHeight;
using MediatR;

namespace MediatorCqrs.Queries
{
    public record GetMaxHeightQuery() : IRequest<GetMaxHeightDTO>;
    
}
