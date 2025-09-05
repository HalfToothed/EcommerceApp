using Microsoft.AspNetCore.Mvc;
using Ecommerce.DataLayer.Interfaces;
using Ecommerce.Models;
using Ecommerce.Entities;
using Microsoft.AspNetCore.Authorization;
using Ecommerce.DataLayer.Repositories;

namespace Ecommerce.Api.Controllers
{
    [ApiController]
    [Route("/products")]
    public class ProductController : ControllerBase
    {
        private readonly IProductRepository productRepository;
        public ProductController(IProductRepository _productRepository) 
        {
            productRepository = _productRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetProducts(
          [FromQuery] string? category,
          [FromQuery] string? search,
          [FromQuery] decimal? minPrice,
          [FromQuery] decimal? maxPrice)
        {
            if (!string.IsNullOrEmpty(category))
                return Ok(await productRepository.GetByCategoryAsync(category));

            if (!string.IsNullOrEmpty(search))
                return Ok(await productRepository.SearchAsync(search));

            if (minPrice.HasValue && maxPrice.HasValue)
                return Ok(await productRepository.FilterByPriceRangeAsync(minPrice.Value, maxPrice.Value));

            return Ok(await productRepository.GetAllAsync());
        }

        [HttpGet("/products/{id}")]
        public async Task<IActionResult> GetProductById(int id)
        {
            var product = await productRepository.GetByIdAsync(id);
            if (product == null) return NotFound();
            return Ok(product);
        }
    }
}
