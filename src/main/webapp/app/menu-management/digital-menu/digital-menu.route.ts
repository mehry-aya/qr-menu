import { Route } from '@angular/router';
import { DigitalMenuComponent } from './digital-menu.component';

export const DIGITAL_MENU_ROUTE: Route = {
  path: 'digital-menu',
  component: DigitalMenuComponent,
  data: {
    authorities: [],
    pageTitle: 'digital menu',
  },
};
