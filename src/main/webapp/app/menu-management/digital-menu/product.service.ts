import { Injectable } from '@angular/core';
import { SERVER_API_URL } from '../../app.constants';
import { HttpClient } from '@angular/common/http';
import { IProduct } from './digital-menu.model';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ProductService {
  private apiServerUrl = SERVER_API_URL + 'api/product';

  constructor(private http: HttpClient) {}

  public addProduct(product: IProduct): Observable<IProduct> {
    return this.http.post<IProduct>(this.apiServerUrl, product);
  }

  public getProduct(id: number): Observable<IProduct> {
    return this.http.get<IProduct>(`${this.apiServerUrl}/${id}`);
  }

  public updateProduct(product: IProduct): Observable<IProduct> {
    return this.http.put<IProduct>(this.apiServerUrl, product);
  }

  public deleteProduct(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/${id}`);
  }

  public getAllProducts(): Observable<any[]> {
    return this.http.get<any[]>(this.apiServerUrl + '/all');
  }
}
