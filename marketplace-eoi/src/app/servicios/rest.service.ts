import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { User } from '../clases/user';
import { environment } from '../../environments/environment';
import { Article } from '../clases/article';
import { Order } from '../clases/order';
@Injectable({
  providedIn: 'root',
})
export class RestService {
  users: User[] = [];
  logUser: User = new User();
  constructor(private http: HttpClient) {}
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
    }),
  };
  getUsuarios(): Observable<Array<User>> {
    return this.http.get<User[]>(`${environment.BACKEND_URL}/usuarios`);
  }
  addUsuario(user: User): Observable<User> {
    return this.http.post<User>(
      `${environment.BACKEND_URL}/usuarios`,
      user,
      this.httpOptions
    );
  }
  updateUsuario(user: User): Observable<User> {
    return this.http.put<User>(
      `${environment.BACKEND_URL}/usuarios/${user.id}`,
      user,
      this.httpOptions
    );
  }
  deleteUsuario(id: number): Observable<{}> {
    return this.http.delete(
      `${environment.BACKEND_URL}/usuarios/${id}`,
      this.httpOptions
    );
  }

  getArticulos(): Observable<Array<Article>> {
    return this.http.get<Article[]>(`${environment.BACKEND_URL}/articulos`);
  }

  addArticulo(articulo: Article): Observable<Article> {
    return this.http.post<Article>(
      `${environment.BACKEND_URL}/articulos`,
      articulo,
      this.httpOptions
    );
  }

  deleteArticulo(id: number): Observable<{}> {
    return this.http.delete(
      `${environment.BACKEND_URL}/articulos/${id}`,
      this.httpOptions
    );
  }

  updateArticulo(article: Article): Observable<Article> {
    return this.http.put<Article>(
      `${environment.BACKEND_URL}/articulos/${article.id}`,
      article,
      this.httpOptions
    );
  }
  getPedidos(): Observable<Array<Order>> {
    return this.http.get<Order[]>(`${environment.BACKEND_URL}/orders`);
  }

  addPedido(pedido: Order): Observable<Order> {
    return this.http.post<Order>(
      `${environment.BACKEND_URL}/orders`,
      pedido,
      this.httpOptions
    );
  }
  deletePedido(id: number): Observable<{}> {
    return this.http.delete(
      `${environment.BACKEND_URL}/orders/${id}`,
      this.httpOptions
    );
  }
  updatePedido(order: Order): Observable<Order> {
    return this.http.put<Order>(
      `${environment.BACKEND_URL}/orders/${order.id}`,
      order,
      this.httpOptions
    );
  }
}
