export interface IMenuFiles {
  id?: number;
  category: string;
  image: string;
  logo: string;
}

export class MenuFiles implements IMenuFiles {
  constructor(public category: string, public image: string, public logo: string, public id?: number) {}
}
