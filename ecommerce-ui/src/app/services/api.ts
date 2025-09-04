import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from '../models/product';
import { User } from '../models/user';

@Injectable({
  providedIn: 'root'
})
export class Api {
  private apiUrl = 'https://localhost:5001/api'; // update to match your backend

  constructor(private http: HttpClient) {}

  // Auth
  login(user: User): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/login`, user);
  }

  // Products
  getProducts(): Observable<Product[]> {
    return this.http.get<Product[]>(`${this.apiUrl}/products`);
  }

  getProduct(id: number): Observable<Product> {
    return this.http.get<Product>(`${this.apiUrl}/products/${id}`);
  }
}
