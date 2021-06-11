import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { ActivatedRoute } from '@angular/router';
import { Establishment } from 'app/establishment/establishment.model';

@Component({
  selector: 'jhi-menu-file',
  templateUrl: './menu-file.component.html',
  styleUrls: ['./menu-file.component.scss'],
})
export class MenuFileComponent implements OnInit {
  public menu!: MenuFiles;
  public menuForm: FormGroup;
  public uploadedFile!: UploadedFile;
  public establishment!: Establishment;
  public id!: number;
  public data!: string;
  public size = 250;
  closeResult = '';

  @ViewChild('parent') myInputVariable!: ElementRef;

  constructor(private menuFileService: MenuFileService, private fb: FormBuilder, private activatedRoute: ActivatedRoute) {
    this.menuForm = this.createForm();
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idEstab'];

      this.menuFileService.getAllMenuFileByEstablishment(this.id).subscribe(value => {
        this.menu = value;
        this.data = 'http://192.168.1.14:8080/' + this.menu.uploadedFile.path;
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

  previousState(): void {
    window.history.back();
  }

  saveAsImage(parent: any): any {
    const parentElement = parent.qrcElement.nativeElement.querySelector('img').src;

    // converts base 64 encoded image to blobData
    const blobData = this.convertBase64ToBlob(parentElement);

    // saves as image
    if (window.navigator && window.navigator.msSaveOrOpenBlob) {
      // IE
      window.navigator.msSaveOrOpenBlob(blobData, 'Qrcode');
    } else {
      // chrome
      const blob = new Blob([blobData], { type: 'image/png' });
      const url = window.URL.createObjectURL(blob);
      // window.open(url);
      const link = document.createElement('a');
      link.href = url;
      link.download = 'Qrcode';
      link.click();
    }
  }

  private convertBase64ToBlob(Base64Image: any): any {
    // SPLIT INTO TWO PARTS
    const parts = Base64Image.split(';base64,');
    // HOLD THE CONTENT TYPE
    const imageType = parts[0].split(':')[1];
    // DECODE BASE64 STRING
    const decodedData = window.atob(parts[1]);
    // CREATE UNIT8ARRAY OF SIZE SAME AS ROW DATA LENGTH
    const uInt8Array = new Uint8Array(decodedData.length);
    // INSERT ALL CHARACTER CODE INTO UINT8ARRAY
    for (let i = 0; i < decodedData.length; ++i) {
      uInt8Array[i] = decodedData.charCodeAt(i);
    }
    // RETURN BLOB IMAGE AFTER CONVERSION
    return new Blob([uInt8Array], { type: imageType });
  }
}
