import { Product } from 'app/product/product.model';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';

export class Category {
  id!: number;
  name!: String;
  level!: number;
  digitalMenu: DigitalMenu = new DigitalMenu();
  products!: Product[];
}
