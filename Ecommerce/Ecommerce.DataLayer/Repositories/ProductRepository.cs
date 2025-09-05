
using Ecommerce.DataLayer.Interfaces;
using Ecommerce.Entities;
using Microsoft.EntityFrameworkCore;
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

        public async Task<IEnumerable<Product>> GetAllAsync()
           => await _context.Products.ToListAsync();

        public async Task<Product?> GetByIdAsync(int id)
            => await _context.Products.FindAsync(id);

        public async Task<IEnumerable<Product>> GetByCategoryAsync(string category)
            => await _context.Products
                .Where(p => p.Category.ToLower() == category.ToLower())
                .ToListAsync();

        public async Task<IEnumerable<Product>> SearchAsync(string searchTerm)
            => await _context.Products
                .Where(p => p.Name.Contains(searchTerm) || p.Description.Contains(searchTerm))
                .ToListAsync();

        public async Task<IEnumerable<Product>> FilterByPriceRangeAsync(decimal minPrice, decimal maxPrice)
            => await _context.Products
                .Where(p => p.Price >= minPrice && p.Price <= maxPrice)
                .ToListAsync();
    }
}
