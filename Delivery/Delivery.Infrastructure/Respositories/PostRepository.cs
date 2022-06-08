
using Delivery.Core.Entities;
using Delivery.Core.Interfaces;
using Delivery.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;



namespace Delivery.Infrastructure.Repositories
{
    public class PostRepository : IPostRepository
    {
        private readonly DB_MafiaTechContext _context;


        public PostRepository(DB_MafiaTechContext context)
        {
            _context = context;
        }
        public async Task<IEnumerable<TblProducto>> GetPosts()
        {
            var posts = await _context.TblProductos.ToListAsync();

            return posts;

        }

       
    }
}

