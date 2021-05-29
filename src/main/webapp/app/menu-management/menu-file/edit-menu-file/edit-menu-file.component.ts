import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { FormBuilder } from '@angular/forms';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

@Component({
  selector: 'jhi-edit-menu-file',
  templateUrl: './edit-menu-file.component.html',
  styleUrls: ['./edit-menu-file.component.scss'],
})
export class EditMenuFileComponent implements OnInit {
  id!: number;
  menu!: MenuFiles;
  isSaving = false;

  editForm = this.fb.group({
    name: [''],
    uploadedFile: [''],
  });

  constructor(private fb: FormBuilder, private activatedRoute: ActivatedRoute, private menuFileService: MenuFileService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['id'];

      this.menuFileService.getMenuFile(this.id).subscribe((menu: MenuFiles) => {
        this.menu = menu;
        this.updateForm(menu);
      });
    });
  }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];
    formData.append('files', file, file.name);
    this.menuFileService.upload(formData).subscribe(uploadedFile => {
      this.menu.uploadedFile = uploadedFile;
    });
  }

  previousState(): void {
    window.history.back();
  }

  save(): void {
    this.isSaving = true;
    this.editMenu(this.menu);
    if (this.menu.id !== undefined) {
      this.menuFileService.updateMenuFile(this.menu).subscribe(
        () => this.onSaveSuccess(),
        () => this.onSaveError()
      );
    }
  }

  deleteFile(id: number): void {
    this.menuFileService.deleteFile(id).subscribe(() => {
      this.menu.uploadedFile = new UploadedFile();
      this.editForm.get('uploadedFile')?.reset();
    });
  }

  private updateForm(menu: MenuFiles): void {
    this.editForm.patchValue({
      name: menu.name,
    });
  }

  private editMenu(menu: MenuFiles): void {
    menu.name = this.editForm.get(['name'])!.value;
    menu.uploadedFile = this.menu.uploadedFile;
  }

  private onSaveSuccess(): void {
    this.isSaving = false;
    this.previousState();
  }

  private onSaveError(): void {
    this.isSaving = false;
  }
}
