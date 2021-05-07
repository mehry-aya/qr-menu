import { Product } from 'app/menu-management/digital-menu/product.model';

export interface IProduct {
  id: number;
  category: string;
  logo: string;
  image: string;
  product: Product;
}
export class DigitalMenu implements IProduct {
  constructor(public id: number, public category: string, public image: string, public logo: string, public product: Product) {}
}
