using Microsoft.AspNetCore.Mvc;

namespace ApiPlayground.Api.Controllers
{
    [ApiController]
    [Route("/api/health")]
    public class HealthController : Controller
    {
        [HttpGet]
        public IActionResult CheckHealth() => this.Ok();
    }
}