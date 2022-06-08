using Delivery.Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Delivery.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PostController : ControllerBase
    {
        private readonly IPostRepository _postRespository;
        public PostController(IPostRepository postRespository)
        {
            _postRespository = postRespository;
        }
        [HttpGet]
        public async Task<IActionResult> GetPosts()

        {
            var posts = await _postRespository.GetPosts();
            return Ok(posts);
        }

        
        
    } 
}
