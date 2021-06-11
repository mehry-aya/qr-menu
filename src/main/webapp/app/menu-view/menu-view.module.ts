import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuViewComponent } from './menu-view.component';
import { PdfViewerModule } from 'ng2-pdf-viewer';
import { RouterModule } from '@angular/router';
import { PDF_ROUTE } from './menu-view.route';
import { QrMenuSharedModule } from '../shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [MenuViewComponent],
  imports: [CommonModule, PdfViewerModule, RouterModule.forChild(PDF_ROUTE), QrMenuSharedModule, ReactiveFormsModule],
})
export class MenuViewModule {}
