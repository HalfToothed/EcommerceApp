import { Routes } from '@angular/router';
import { ProductList } from './components/product-list/product-list';
import { Login } from './components/login/login';

export const routes: Routes = [
      { path: 'login', component: Login },
  { path: 'products', component: ProductList },
  { path: '', redirectTo: '/products', pathMatch: 'full' }
];
