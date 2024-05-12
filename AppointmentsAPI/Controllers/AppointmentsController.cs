using System.Runtime.InteropServices;
using DTOs.WriteAppointments;
using MediatorCqrs.Commands;
using MediatorCqrs.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace AppointmentsAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AppointmentsController : ControllerBase
    {
        private readonly IMediator _mediator;

        public AppointmentsController(IMediator mediator)
        {
            _mediator = mediator;
        }
        [HttpPost()]
        public async Task<IActionResult> InsertAppointment([FromBody] InsertAppointmentDTO insertAppointmentDTO)
        {
            var result= await _mediator.Send(new InsertAppointmentCommand(insertAppointmentDTO));
            return Created("",result);
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateAppointment(string id,[FromBody] UpdateAppointmentDTO updateAppointmentDTO)
        {
            var result = await _mediator.Send(new  UpdateAppointmentCommand(updateAppointmentDTO));
            return Ok(result);
        }
        [HttpDelete()]
        public async Task<IActionResult> DeleteAppointment([FromBody] DeleteAppointmentDTO deleteAppointmentDTO)
        {
            var result = await _mediator.Send(new  DeleteAppointmentCommand(deleteAppointmentDTO));
            return Ok(result);
        }

        [HttpGet("emergency")]
        public async Task<IActionResult> GetEmergencyAppointments()
        {
            var result= await _mediator.Send(new GetEmergencyAppointmentsQuery());
            return Ok(result);
        }
    }
}
