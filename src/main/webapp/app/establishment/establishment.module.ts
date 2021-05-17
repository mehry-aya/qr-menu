import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EstablishmentComponent } from './establishment.component';
import { RouterModule } from '@angular/router';
import { ESTABLISHMENT_ROUTE } from './establishment.route';
import { QrMenuSharedModule } from '../shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';
import { EditEstablishmentModule } from 'app/establishment/edit-establishment/edit-establishment.module';

@NgModule({
  imports: [CommonModule, RouterModule.forChild(ESTABLISHMENT_ROUTE), QrMenuSharedModule, ReactiveFormsModule, EditEstablishmentModule],
  declarations: [EstablishmentComponent],
})
export class EstablishmentModule {}
