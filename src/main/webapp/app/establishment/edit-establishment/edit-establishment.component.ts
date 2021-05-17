import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { EstablishmentService } from '../establishment.service';
import { Establishment } from '../establishment.model';
import { UploadedFile } from '../../menu-management/menu-file/uploaded-file.model';

@Component({
  selector: 'jhi-edit-establishment',
  templateUrl: './edit-establishment.component.html',
  styleUrls: ['./edit-establishment.component.scss'],
})
export class EditEstablishmentComponent implements OnInit {
  id!: number;
  isSaving = false;
  establishment!: Establishment;

  editForm = this.fb.group({
    name: [''],
    adress: [''],
    contact: [''],
    category: [''],
    logo: [''],
  });

  constructor(private fb: FormBuilder, private activatedRoute: ActivatedRoute, private establishmentService: EstablishmentService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['id'];

      this.establishmentService.getEstablishment(this.id).subscribe((establishment: Establishment) => {
        this.establishment = establishment;
        this.updateForm(establishment);
      });
    });
  }

  private updateForm(establishment: Establishment): void {
    this.editForm.patchValue({
      name: establishment.name,
      adress: establishment.adress,
      contact: establishment.contact,
      category: establishment.category,
    });
  }

  private editEstablishment(establishment: Establishment): void {
    establishment.name = this.editForm.get(['name'])!.value;
    establishment.adress = this.editForm.get(['adress'])!.value;
    establishment.contact = this.editForm.get(['contact'])!.value;
    establishment.category = this.editForm.get(['category'])!.value;
    establishment.logo = this.establishment.logo;
  }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];
    formData.append('files', file, file.name);
    this.establishmentService.upload(formData).subscribe(logo => {
      this.establishment.logo = logo;
    });
  }
  deleteFile(id: number): void {
    this.establishmentService.deleteFile(id).subscribe(() => {
      this.establishment.logo = new UploadedFile();
      this.editForm.get('logo')?.reset();
    });
  }

  previousState(): void {
    window.history.back();
  }

  save(): void {
    this.isSaving = true;
    this.editEstablishment(this.establishment);
    if (this.establishment.id !== undefined) {
      this.establishmentService.updateEstablishment(this.establishment).subscribe(
        () => this.onSaveSuccess(),
        () => this.onSaveError()
      );
    }
  }

  private onSaveSuccess(): void {
    this.isSaving = false;
    this.previousState();
  }

  private onSaveError(): void {
    this.isSaving = false;
  }
}
