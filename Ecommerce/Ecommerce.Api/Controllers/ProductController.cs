using Microsoft.AspNetCore.Mvc;
using Ecommerce.DataLayer.Interfaces;
using Ecommerce.Models;
using Ecommerce.Entities;
using Microsoft.AspNetCore.Authorization;

namespace Ecommerce.Api.Controllers
{
    [ApiController]
    [Authorize]
    [Route("[controller]")]
    public class ProductController : ControllerBase
    {
        private readonly IProductRepository productRepository;
        public ProductController(IProductRepository _productRepository) 
        {
            productRepository = _productRepository;
        }

        [HttpPost("Add")]
        public async Task<IActionResult> Add([FromBody] ProductModel model) 
        {
            var entity = new Product 
            { 
                Name = model.Name,
                Description = model.Description,
                Category = model.Category,
                ImageUrl = model.ImageUrl,
                StockQuantity = model.StockQuantity,
                CreateDate = model.CreateDate,
                LastUpdatedDate = model.LastUpdatedDate,
            };

            productRepository.Add(entity);
            return Ok();
        }

        [HttpPost("Update")]
        public async Task<IActionResult> Update(ProductEditModel model) 
        {
            var entity = new Product
            {
                Id = model.Id,
                Name = model.Name,
                Description = model.Description,
                Category = model.Category,
                ImageUrl = model.ImageUrl,
                StockQuantity = model.StockQuantity,
                CreateDate = model.CreateDate,
                LastUpdatedDate = model.LastUpdatedDate,
            };

            productRepository.Update(entity);
            return Ok();

        }

        [HttpGet("GetProducts")]
        public async Task<IActionResult> Products()
        {
            var products = productRepository.Products();
            return Ok(products);
        }
        
        [HttpGet("/{id}")]
        public async Task<IActionResult> GetProductById(int id)
        {
            var product = productRepository.GetProductById(id);
            return Ok(product);
        }
        
    }
}
