using System.Collections;
using Contracts;
using Microsoft.AspNetCore.Mvc;
using Models;

namespace AppointmentsAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class TestController : ControllerBase
    {
        private readonly ILoggerManager _logger;

        public TestController(ILoggerManager logger)
        {
            _logger = logger;
        }

        [HttpGet("index/{id}")]
        public IActionResult Get(int id)
        {
            if (id == 0)
            {
                _logger.LogInfo("Here is info message from the controller.");
                _logger.LogDebug("Here is debug message from the controller.");
                _logger.LogWarn("Here is warn message from the controller.");
                _logger.LogError("Here is error message from the controller.");
            }
            
            if(id == 1)
            {
                throw new Exception("Pomozi boze!");
            }
            return Ok(new string[] { "value1", "value2" });
        }
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(new Person { JMBG="wwww"});
        }
    }
}
