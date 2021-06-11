import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { SERVER_API_URL } from '../app.constants';
import { Establishment } from './establishment.model';
import { Observable } from 'rxjs';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

@Injectable({
  providedIn: 'root',
})
export class EstablishmentService {
  private apiServerUrl = SERVER_API_URL + 'api/establishment';
  constructor(private http: HttpClient) {}

  public addEstablishment(establishment: Establishment): Observable<Establishment> {
    return this.http.post<Establishment>(this.apiServerUrl + '/add', establishment);
  }

  public upload(formData: FormData): Observable<UploadedFile> {
    return this.http.post<UploadedFile>(this.apiServerUrl + '/upload', formData);
  }

  public deleteFile(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/file/${id}`);
  }

  public getAllEstablishments(): Observable<Establishment[]> {
    return this.http.get<Establishment[]>(this.apiServerUrl + '/all');
  }

  public getEstablishmentsByCurrentUser(id: number): Observable<Establishment[]> {
    return this.http.get<Establishment[]>(`${this.apiServerUrl}/user/${id}`);
  }

  public getEstablishment(id: number): Observable<Establishment> {
    return this.http.get<Establishment>(`${this.apiServerUrl}/getone/${id}`);
  }

  public updateEstablishment(establishment: Establishment): Observable<Establishment> {
    return this.http.put<Establishment>(this.apiServerUrl + '/update', establishment);
  }

  public deleteEstablishment(id: number): Observable<{}> {
    return this.http.delete(`${this.apiServerUrl}/delete/${id}`);
  }
}
