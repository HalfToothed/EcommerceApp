import { Component, OnInit } from '@angular/core';
import { Api } from '../../services/api';
import { Product } from '../../models/product';

@Component({
  selector: 'app-product-list',
  template: `
    <h2>Products</h2>
    <div *ngFor="let p of products" (click)="selectProduct(p)">
      <img [src]="p.imageUrl" width="50">
      <b>{{ p.name }}</b> - {{ p.price }}
    </div>
  `
})
export class ProductList implements OnInit {
  products: Product[] = [];

  constructor(private api: Api) {}

  ngOnInit() {
    this.api.getProducts().subscribe(data => this.products = data);
  }

  selectProduct(product: Product) {
    alert(`Selected ${product.name}`);
  }
}
