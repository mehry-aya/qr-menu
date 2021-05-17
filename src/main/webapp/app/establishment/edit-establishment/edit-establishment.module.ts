import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EditEstablishmentComponent } from './edit-establishment.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { QrMenuSharedModule } from '../../shared/shared.module';

@NgModule({
  declarations: [EditEstablishmentComponent],
  imports: [CommonModule, ReactiveFormsModule, RouterModule, FormsModule, QrMenuSharedModule],
})
export class EditEstablishmentModule {}
