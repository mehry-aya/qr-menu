export interface IMenuFiles {
  id_menu: number;
  category: string;
  imageUrl: string;
}

export class MenuFiles implements IMenuFiles {
  constructor(public id_menu: number, public category: string, public imageUrl: string) {}
}
