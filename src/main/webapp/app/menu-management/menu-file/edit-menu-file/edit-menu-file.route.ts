import { Route } from '@angular/router';
import { EditMenuFileComponent } from 'app/menu-management/menu-file/edit-menu-file/edit-menu-file.component';

export const EDIT_MENU_FILE_ROUTE: Route = {
  path: 'menu-file/:id/edit',
  component: EditMenuFileComponent,
  data: {
    authorities: [],
    pageTitle: 'Menu Files',
  },
};
