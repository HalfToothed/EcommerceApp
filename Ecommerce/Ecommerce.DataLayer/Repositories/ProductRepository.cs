
using Ecommerce.DataLayer.Interfaces;
using Ecommerce.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ecommerce.DataLayer.Repositories
{
    public class ProductRepository: IProductRepository
    {
        private readonly DataContext _context;
        public ProductRepository(DataContext context)
        {
            _context = context;
        }

        public void Add(Product product)
        {
            _context.Products.Add(product);
            _context.SaveChanges();
        }
        public void Update(Product product) 
        {
            _context.Products.Update(product);
            _context.SaveChanges();
        }
        public List<Product> Products()
        {
            return _context.Products.ToList();
        }
        public Product GetProductById(int id)
        {
            return _context.Products.Where(x => x.Id == id).FirstOrDefault();
        }
    }
}
