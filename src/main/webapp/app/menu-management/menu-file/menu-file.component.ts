import { Component, OnInit } from '@angular/core';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'jhi-menu-file',
  templateUrl: './menu-file.component.html',
  styleUrls: ['./menu-file.component.scss'],
})
export class MenuFileComponent implements OnInit {
  public menu!: MenuFiles;
  public menuForm: FormGroup;
  public uploadedFile!: UploadedFile;
  public id!: number;
  // @ViewChild('myFile')
  // myInputVariable!: ElementRef;

  constructor(private menuFileService: MenuFileService, private fb: FormBuilder, private activatedRoute: ActivatedRoute) {
    this.menuForm = this.createForm();
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idEstab'];

      this.menuFileService.getAllMenuFileByEstablishment(this.id).subscribe(value => {
        this.menu = value;
      });
    });
  }

  public add(): void {
    const menu: MenuFiles = new MenuFiles();
    menu.name = this.menuForm.get('name')?.value;
    menu.uploadedFile = this.uploadedFile;
    this.menuFileService.addMenuFile(menu, this.id).subscribe(() => {
      this.menuForm.reset();
      this.uploadedFile = new UploadedFile();
      this.menuFileService.getAllMenuFileByEstablishment(this.id).subscribe(value => {
        this.menu = value;
      });
    });
  }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];

    formData.append('files', file, file.name);
    this.menuFileService.upload(formData).subscribe(uploadedFile => {
      this.uploadedFile = uploadedFile;
    });
  }

  private createForm(): FormGroup {
    return this.fb.group({
      name: [null, [Validators.required]],
      uploadedFile: [null, [Validators.required]],
    });
  }

  public delete(id: any): void {
    this.menuFileService.deleteMenuFile(id).subscribe(() => {
      this.menuFileService.getAllMenuFileByEstablishment(this.id).subscribe(value => {
        this.menu = value;
      });
    });
  }

  deleteFile(id: number): void {
    this.menuFileService.deleteFile(id).subscribe(() => {
      this.uploadedFile = new UploadedFile();
      this.menuForm.get('uploadedFile')?.reset();
    });
  }

  public getImageUrl(uploadedFile: UploadedFile): string {
    return uploadedFile.path;
  }
}
