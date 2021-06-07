import { Routes } from '@angular/router';
import { MenuManagementComponent } from 'app/menu-management/menu-management.component';
import { MenuFileComponent } from 'app/menu-management/menu-file/menu-file.component';
import { DigitalMenuComponent } from 'app/menu-management/digital-menu/digital-menu.component';
import { EditMenuFileComponent } from 'app/menu-management/menu-file/edit-menu-file/edit-menu-file.component';
import { EditProductComponent } from 'app/product/edit-product/edit-product.component';

// const MENU_MANAGEMENT_ROUTES = [MENU_FILE_ROUTE, DIGITAL_MENU_ROUTE, EDIT_MENU_FILE_ROUTE];

export const MENU_MANAGEMENT_ROUTE: Routes = [
  {
    path: '',
    component: MenuManagementComponent,
    // children: MENU_MANAGEMENT_ROUTES,
    data: {
      authorities: [],
      pageTitle: 'Menu Management',
    },
  },

  {
    path: 'menu-file',
    component: MenuFileComponent,
    data: {
      authorities: [],
      pageTitle: 'Menu Files',
    },
  },

  {
    path: 'digital-menu',
    component: DigitalMenuComponent,
    data: {
      authorities: [],
      pageTitle: 'digital menu',
    },
  },

  {
    path: 'menu-file/:id/edit',
    component: EditMenuFileComponent,
    data: {
      authorities: [],
      pageTitle: 'Menu Files',
    },
  },
  {
    path: 'digital-menu/product/:id/edit',
    component: EditProductComponent,
    data: {
      authorities: [],
      pageTitle: 'Product',
    },
  },
];
