import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

export class MenuFiles {
  id?: number;
  name!: string;
  uploadedFile!: UploadedFile;
}
