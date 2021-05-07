import { Injectable } from '@angular/core';
import { SERVER_API_URL } from '../../app.constants';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { DigitalMenu, IProduct } from './digital-menu.model';

@Injectable({
  providedIn: 'root',
})
export class DigitalMenuService {
  private apiServerUrl = SERVER_API_URL + 'api/digital-menu';

  constructor(private http: HttpClient) {}

  public addDigitalMenu(digitalMenu: IProduct): Observable<IProduct> {
    return this.http.post<IProduct>(this.apiServerUrl, digitalMenu);
  }

  public getDigitalMenu(id: number): Observable<IProduct> {
    return this.http.get<IProduct>(`${this.apiServerUrl}/${id}`);
  }

  public updateDigitalMenu(digitalMenu: IProduct): Observable<IProduct> {
    return this.http.put<IProduct>(this.apiServerUrl, digitalMenu);
  }

  public deleteDigitalMenu(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/${id}`);
  }

  public getAllDigitalMenu(): Observable<DigitalMenu[]> {
    return this.http.get<DigitalMenu[]>(this.apiServerUrl + '/all');
  }
}
