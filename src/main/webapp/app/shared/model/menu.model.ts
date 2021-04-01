export interface IMenu {
  id?: number;
  id_menu?: number;
  category?: string;
}

export class Menu implements IMenu {
  constructor(public id?: number, public id_menu?: number, public category?: string) {}
}
