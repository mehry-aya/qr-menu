import { Injectable } from '@angular/core';
import { SERVER_API_URL } from '../app.constants';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from './product.model';
import { UploadedFile } from '../menu-management/menu-file/uploaded-file.model';

@Injectable({
  providedIn: 'root',
})
export class ProductService {
  private apiServerUrl = SERVER_API_URL + 'api/product';

  constructor(private http: HttpClient) {}

  public addProduct(product: Product): Observable<Product> {
    return this.http.post<Product>(this.apiServerUrl, product);
  }

  public upload(formData: FormData): Observable<UploadedFile> {
    return this.http.post<UploadedFile>(this.apiServerUrl + '/upload', formData);
  }

  public getProduct(id: number): Observable<Product> {
    return this.http.get<Product>(`${this.apiServerUrl}/${id}`);
  }

  public updateProduct(product: Product): Observable<Product> {
    return this.http.put<Product>(this.apiServerUrl, product);
  }

  public deleteProduct(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/${id}`);
  }

  public deleteFile(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/file/${id}`);
  }

  public getAllProducts(): Observable<any[]> {
    return this.http.get<any[]>(this.apiServerUrl + '/all');
  }
}
