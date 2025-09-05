import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from '../models/product';
import { User } from '../models/user';

@Injectable({
  providedIn: 'root'
})
export class Api {
   private baseUrl = 'https://localhost:44374';

  constructor(private http: HttpClient) {}

  getProducts(filters?: { category?: string; search?: string; minPrice?: number | null; maxPrice?: number | null }): Observable<Product[]> {
    let params = new HttpParams();
    if (filters?.category) params = params.set('category', filters.category);
    if (filters?.search) params = params.set('search', filters.search);
    if (filters?.minPrice != null) params = params.set('minPrice', String(filters.minPrice));
    if (filters?.maxPrice != null) params = params.set('maxPrice', String(filters.maxPrice));

    return this.http.get<Product[]>(`${this.baseUrl}/products`, { params });
  }

  getProduct(id: number): Observable<Product> {
    return this.http.get<Product>(`${this.baseUrl}/products/${id}`);
  }
}
