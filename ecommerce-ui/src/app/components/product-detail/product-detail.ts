import { Component } from '@angular/core';
import { Product } from '../../models/product';
import { Api } from '../../services/api';
import { ActivatedRoute, RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-product-detail',
 imports: [CommonModule, RouterModule],
  templateUrl: './product-detail.html',
  styleUrl: './product-detail.css'
})
export class ProductDetail {
  product?: Product;
  loading = false;
  error = '';
  placeholder = 'https://via.placeholder.com/600x400?text=No+Image';

  constructor(private route: ActivatedRoute, private api: Api) {}

  ngOnInit(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    if (!id) { this.error = 'Invalid product id.'; return; }
    this.loading = true;
    this.api.getProduct(id).subscribe({
      next: (p) => { this.product = p; this.loading = false; },
      error: (err) => { this.error = 'Failed to load product.'; this.loading = false; console.error(err); }
    });
  }
}
