import { Routes } from '@angular/router';
import { MENU_FILE_ROUTE } from './menu-file/menu-file.route';
import { DIGITAL_MENU_ROUTE } from './digital-menu/digital-menu.route';

const MENU_MANAGEMENT_ROUTES = [MENU_FILE_ROUTE, DIGITAL_MENU_ROUTE];

export const MENU_MANAGEMENT_ROUTE: Routes = [
  {
    path: '',
    children: MENU_MANAGEMENT_ROUTES,
  },
];
