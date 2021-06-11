import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EditProductComponent } from './edit-product.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { QrMenuSharedModule } from '../../shared/shared.module';

@NgModule({
  declarations: [EditProductComponent],
  imports: [CommonModule, FormsModule, ReactiveFormsModule, RouterModule, QrMenuSharedModule],
})
export class EditProductModule {}
