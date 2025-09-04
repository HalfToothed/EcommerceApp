import { Component } from '@angular/core';
import { Api } from '../../services/api';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
   imports: [FormsModule],
  template: `
    <h2>Login</h2>
    <input [(ngModel)]="username" placeholder="Username">
    <input [(ngModel)]="password" type="password" placeholder="Password">
    <button (click)="login()">Login</button>
  `
})
export class Login {
  username = '';
  password = '';

  constructor(private api: Api) {}

  login() {
    this.api.login({ username: this.username, password: this.password })
      .subscribe(res => {
        localStorage.setItem('token', res.token);
        alert('Login successful!');
      }, err => alert('Login failed'));
  }
}
