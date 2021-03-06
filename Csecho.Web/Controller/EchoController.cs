using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Csecho.Web.Controllers
{
    public class EchoController : ControllerBase
    {
	[HttpGet("/{namespace}/{service}/{echo}")]
        public IActionResult Echo(string echo)
        {
            return Ok(echo);
        }
    }
}
