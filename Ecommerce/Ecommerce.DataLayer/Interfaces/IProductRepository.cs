
using Ecommerce.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ecommerce.DataLayer.Interfaces
{
    public interface IProductRepository
    {
        void Add(Product product);
        void Update(Product product);
        List<Product> Products();
        Product GetProductById(int id);
      
    }
}
