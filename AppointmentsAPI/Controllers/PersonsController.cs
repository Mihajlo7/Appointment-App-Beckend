using Contracts;
using DTOs.GetOverweightPeople;
using MediatorCqrs.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace AppointmentsAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PersonsController: ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly ILoggerManager _logger;

        public PersonsController(IMediator mediator,ILoggerManager logger)
        {
            _mediator = mediator;
            _logger = logger;
        }
        [HttpGet("max-height")]
        public async Task<IActionResult> GetMaxSizePerson()
        {
            _logger.LogInfo($"Get max size info");
            var result = await _mediator.Send(new GetMaxHeightQuery());
            return Ok(result);
        }
        [HttpGet("over-weight")]
        public async Task<IActionResult> GetOverweightPerson()
        {
            _logger.LogInfo($"Get overweight info");
            var result = await _mediator.Send(new GetOverweightQuery());
            return Ok(result);
        }
        [HttpGet("{jmbg}")]
        public async Task<IActionResult> GetPersonForJmbg(string jmbg)
        {
            _logger.LogInfo($"Get person with appointments info");
            var result = await _mediator.Send(new GetPersonByJmbgQuery(jmbg));
            return Ok(result);
        }
    }
}
