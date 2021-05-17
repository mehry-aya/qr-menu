import { MenuFiles } from '../menu-management/menu-file/menu-files.model';
import { DigitalMenu } from '../menu-management/digital-menu/digital-menu.model';
import { User } from '../core/user/user.model';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';

export class Establishment {
  id?: number;
  name!: string;
  adress!: string;
  contact!: string;
  category!: string;
  logo!: UploadedFile;
  menuFiles!: MenuFiles;
  digitalMenu!: DigitalMenu;
  user!: User;
}
