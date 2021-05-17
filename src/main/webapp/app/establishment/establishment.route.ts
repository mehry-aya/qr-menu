import { Routes } from '@angular/router';
import { EstablishmentComponent } from './establishment.component';
import { EditEstablishmentComponent } from 'app/establishment/edit-establishment/edit-establishment.component';

export const ESTABLISHMENT_ROUTE: Routes = [
  {
    path: '',
    component: EstablishmentComponent,
    data: {
      authorities: [],
      pageTitle: 'Establishments',
    },
  },
  {
    path: ':id/edit',
    component: EditEstablishmentComponent,
    data: {
      authorities: [],
      pageTitle: 'Establishment',
    },
  },
];
