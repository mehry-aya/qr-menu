import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MenuFiles } from './menu-files.model';
import { SERVER_API_URL } from '../../app.constants';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

@Injectable({
  providedIn: 'root',
})
export class MenuFileService {
  private apiServerUrl = SERVER_API_URL + 'api/menu-files';

  constructor(private http: HttpClient) {}

  public addMenuFile(menuFile: MenuFiles): Observable<MenuFiles> {
    return this.http.post<MenuFiles>(this.apiServerUrl + '/add', menuFile);
  }

  public upload(formData: FormData): Observable<UploadedFile> {
    return this.http.post<UploadedFile>(this.apiServerUrl + '/upload', formData);
  }

  public getMenuFile(id: number): Observable<MenuFiles> {
    return this.http.get<MenuFiles>(`${this.apiServerUrl}/getone/${id}`);
  }

  public updateMenuFile(menuFile: MenuFiles): Observable<MenuFiles> {
    return this.http.put<MenuFiles>(this.apiServerUrl + '/update', menuFile);
  }

  public deleteMenuFile(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/${id}`);
  }

  public deleteFile(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/file/${id}`);
  }

  public getAllMenu(): Observable<MenuFiles[]> {
    return this.http.get<MenuFiles[]>(this.apiServerUrl + '/all');
  }
}
