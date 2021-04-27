export interface IProduct {
  id: number;
  image: string;
  name: string;
  description: string;
  price: number;
  rating: number;
}
export class Product implements IProduct {
  constructor(
    public id: number,
    public image: string,
    public name: string,
    public description: string,
    public price: number,
    public rating: number
  ) {}
}
