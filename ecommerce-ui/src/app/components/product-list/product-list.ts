import { Component, OnInit } from '@angular/core';
import { Api } from '../../services/api';
import { Product } from '../../models/product';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-product-list',
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './product-list.html',
  styleUrl: './product-list.css'
})
export class ProductList implements OnInit {
  products: Product[] = [];
  categories: string[] = ['Electronics', 'Clothing', 'Books', 'Home', 'Sports'];

  // filters
  search = '';
  category = '';
  minPrice: number | null = null;
  maxPrice: number | null = null;

  loading = false;
  error = '';
  placeholder = 'https://via.placeholder.com/400x300?text=No+Image';

  constructor(private api: Api) {}

  ngOnInit(): void {
    this.fetch();
  }

  applyFilters(): void {
    // basic validation: min <= max (if both provided)
    if (this.minPrice != null && this.maxPrice != null && this.minPrice > this.maxPrice) {
      this.error = 'Min price cannot be greater than max price.';
      return;
    }
    this.error = '';
    this.fetch();
  }

  clearFilters(): void {
    this.search = '';
    this.category = '';
    this.minPrice = null;
    this.maxPrice = null;
    this.error = '';
    this.fetch();
  }

  private fetch(): void {
    this.loading = true;
    this.api.getProducts({
      search: this.search.trim() || undefined,
      category: this.category || undefined,
      minPrice: this.minPrice,
      maxPrice: this.maxPrice
    }).subscribe({
      next: (data) => { this.products = data; this.loading = false; },
      error: (err) => { this.error = 'Failed to load products.'; this.loading = false; console.error(err); }
    });
  }
}
