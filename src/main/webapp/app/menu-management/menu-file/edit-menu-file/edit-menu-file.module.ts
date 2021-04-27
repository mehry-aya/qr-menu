import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EditMenuFileComponent } from './edit-menu-file.component';
import { RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { QrMenuSharedModule } from 'app/shared/shared.module';

@NgModule({
  declarations: [EditMenuFileComponent],
  imports: [CommonModule, RouterModule, ReactiveFormsModule, FormsModule, QrMenuSharedModule],
})
export class EditMenuFileModule {}
