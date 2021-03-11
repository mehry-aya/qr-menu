import { Route } from '@angular/router';
import { MenuFileComponent } from './menu-file.component';

export const MENU_FILE_ROUTE: Route = {
  path: '',
  component: MenuFileComponent,
  data: {
    authorities: [],
    pageTitle: 'Welcome, Java Hipster!',
  },
};
