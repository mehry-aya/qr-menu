import { Route } from '@angular/router';
import { MenuManagementComponent } from './menu-management.component';

export const MENU_MANAGEMENT_ROUTE: Route = {
  path: '',
  component: MenuManagementComponent,
  data: {
    authorities: [],
    pageTitle: 'Welcome, Java Hipster!',
  },
};
