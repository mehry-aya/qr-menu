import { Injectable } from '@angular/core';
import { SERVER_API_URL } from '../../app.constants';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { DigitalMenu } from './digital-menu.model';

@Injectable({
  providedIn: 'root',
})
export class DigitalMenuService {
  private apiServerUrl = SERVER_API_URL + 'api/digitalmenu';

  constructor(private http: HttpClient) {}

  public addDigitalMenu(digitalMenu: DigitalMenu, id: number): Observable<DigitalMenu> {
    return this.http.post<DigitalMenu>(`${this.apiServerUrl}/add/${id}`, digitalMenu);
  }

  public getDigitalMenu(id: number): Observable<DigitalMenu> {
    return this.http.get<DigitalMenu>(`${this.apiServerUrl}/getone/${id}`);
  }

  public getDigitalMenuByEstablishment(id: number): Observable<DigitalMenu> {
    return this.http.get<DigitalMenu>(`${this.apiServerUrl}/establishment/${id}`);
  }

  public updateDigitalMenu(digitalMenu: DigitalMenu): Observable<DigitalMenu> {
    return this.http.put<DigitalMenu>(this.apiServerUrl + '/update', digitalMenu);
  }

  public deleteDigitalMenu(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/${id}`);
  }

  public getAllDigitalMenu(): Observable<DigitalMenu[]> {
    return this.http.get<DigitalMenu[]>(this.apiServerUrl + '/all');
  }
}
