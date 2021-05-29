import { Routes } from '@angular/router';
import { PdfViewComponent } from './pdf-view.component';

export const PDF_ROUTE: Routes = [
  {
    path: '',
    component: PdfViewComponent,
    data: {
      authorities: [],
      pageTitle: 'MENU',
    },
  },
];
