import { Route } from '@angular/router';
import { MenuFileComponent } from './menu-file.component';

export const MENU_FILE_ROUTE: Route = {
  path: 'menu-file',
  component: MenuFileComponent,
  data: {
    authorities: [],
    pageTitle: 'Menu Files',
  },
};
