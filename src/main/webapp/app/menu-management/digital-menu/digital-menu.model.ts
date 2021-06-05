import { Category } from 'app/category/category.model';

export class DigitalMenu {
  id!: number;
  name!: String;
  isActivated!: boolean;
  categories!: Category[];
}
