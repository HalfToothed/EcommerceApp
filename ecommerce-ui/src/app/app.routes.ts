import { Routes } from '@angular/router';
import { ProductList } from './components/product-list/product-list';

export const routes: Routes = [
   { path: '', redirectTo: 'products', pathMatch: 'full' },
  { path: 'products', loadComponent: () => import('./components/product-list/product-list').then(m => m.ProductList) },
  { path: 'products/:id', loadComponent: () => import('./components/product-detail/product-detail').then(m => m.ProductDetail) },
  { path: '**', redirectTo: 'products' }
];
