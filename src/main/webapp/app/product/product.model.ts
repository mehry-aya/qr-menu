import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { Category } from 'app/category/category.model';

export class Product {
  id!: number;
  image!: UploadedFile;
  name!: string;
  description!: string;
  price!: number;
  rating!: number;
  category: Category = new Category();
}
