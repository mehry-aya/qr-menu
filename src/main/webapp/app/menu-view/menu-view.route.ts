import { Routes } from '@angular/router';
import { MenuViewComponent } from './menu-view.component';

export const PDF_ROUTE: Routes = [
  {
    path: '',
    component: MenuViewComponent,
    data: {
      authorities: [],
      pageTitle: 'MENU',
    },
  },
];
