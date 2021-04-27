import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { IMenuFiles, MenuFiles } from './menu-files.model';
import { SERVER_API_URL } from '../../app.constants';

@Injectable({
  providedIn: 'root',
})
export class MenuFileService {
  private apiServerUrl = SERVER_API_URL + 'api/menu-files';

  constructor(private http: HttpClient) {}

  public addMenuFile(menuFile: IMenuFiles): Observable<IMenuFiles> {
    return this.http.post<IMenuFiles>(this.apiServerUrl + '/add', menuFile);
  }

  public getMenuFile(id: number): Observable<IMenuFiles> {
    return this.http.get<IMenuFiles>(`${this.apiServerUrl}/getone/${id}`);
  }

  public updateMenuFile(menuFile: IMenuFiles): Observable<IMenuFiles> {
    return this.http.put<IMenuFiles>(this.apiServerUrl + '/update', menuFile);
  }

  public deleteMenuFile(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/${id}`);
  }

  public getAllMenu(): Observable<MenuFiles[]> {
    return this.http.get<MenuFiles[]>(this.apiServerUrl + '/all');
  }
}
