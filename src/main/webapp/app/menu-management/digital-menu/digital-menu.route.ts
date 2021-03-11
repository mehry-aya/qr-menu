import { Route } from '@angular/router';
import { DigitalMenuComponent } from './digital-menu.component';

export const DIGITAL_MENU_ROUTE: Route = {
  path: '',
  component: DigitalMenuComponent,
  data: {
    authorities: [],
    pageTitle: 'Welcome, Java Hipster!',
  },
};
