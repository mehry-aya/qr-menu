import { Injectable } from '@angular/core';
import { SERVER_API_URL } from '../app.constants';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Category } from './category.model';

@Injectable({
  providedIn: 'root',
})
export class CategoryService {
  private apiServerUrl = SERVER_API_URL + 'api/category';
  constructor(private http: HttpClient) {}

  public addCategory(category: Category): Observable<Category> {
    return this.http.post<Category>(this.apiServerUrl, category);
  }

  public getCategory(id: number): Observable<Category> {
    return this.http.get<Category>(`${this.apiServerUrl}/${id}`);
  }

  public updateCategory(category: Category): Observable<Category> {
    return this.http.put<Category>(this.apiServerUrl, category);
  }

  public deleteCategory(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/${id}`);
  }

  public getAllCategories(): Observable<any[]> {
    return this.http.get<any[]>(this.apiServerUrl + '/all');
  }
}
