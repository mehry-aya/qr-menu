import { Component, OnInit } from '@angular/core';
import { Establishment } from 'app/establishment/establishment.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { EstablishmentService } from 'app/establishment/establishment.service';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

@Component({
  selector: 'jhi-establishment',
  templateUrl: './establishment.component.html',
  styleUrls: ['./establishment.component.scss'],
})
export class EstablishmentComponent implements OnInit {
  public estabList: Establishment[] = [];
  public estabForm: FormGroup;
  public logo!: UploadedFile;
  public establishment!: Establishment;

  constructor(private fb: FormBuilder, private establishmentService: EstablishmentService) {
    this.estabForm = this.createForm();
  }

  ngOnInit(): void {
    this.establishmentService.getAllEstablishments().subscribe(value => {
      this.estabList = value;
    });
  }

  createForm(): FormGroup {
    return this.fb.group({
      name: ['', [Validators.required]],
      adress: ['', [Validators.required]],
      contact: ['', [Validators.required]],
      category: ['', [Validators.required]],
      logo: [null, [Validators.required]],
    });
  }
  public add(): void {
    const establishment: Establishment = new Establishment();
    establishment.name = this.estabForm.get('name')?.value;
    establishment.adress = this.estabForm.get('adress')?.value;
    establishment.contact = this.estabForm.get('contact')?.value;
    establishment.category = this.estabForm.get('category')?.value;
    establishment.logo = this.logo;
    this.establishmentService.addEstablishment(establishment).subscribe(() => {
      this.estabForm.reset();
      this.logo = new UploadedFile();
      this.establishmentService.getAllEstablishments().subscribe(value => {
        this.estabList = value;
      });
    });
  }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];

    formData.append('files', file, file.name);
    this.establishmentService.upload(formData).subscribe(logo => {
      this.logo = logo;
    });
  }

  public delete(id: any): void {
    this.establishmentService.deleteEstablishment(id).subscribe(() => {
      this.establishmentService.getAllEstablishments().subscribe(value => {
        this.estabList = value;
      });
    });
  }

  deleteFile(id: number): void {
    this.establishmentService.deleteFile(id).subscribe(() => {
      this.establishment.logo = new UploadedFile();
      this.estabForm.get('logo')?.reset();
    });
  }

  public getImageUrl(logo: UploadedFile): string {
    return logo.path;
  }
}
