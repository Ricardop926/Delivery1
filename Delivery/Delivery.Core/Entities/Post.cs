using System;


namespace Delivery.Core.Entities
{
    public class Post
    {
        public int IdProducto { get; set; }
        public string NombreProducto { get; set; }
        public int IdRestaurante { get; set; }
        public int Precio { get; set; }

    }
}
