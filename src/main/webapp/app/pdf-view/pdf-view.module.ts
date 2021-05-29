import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PdfViewComponent } from './pdf-view.component';
import { PdfViewerModule } from 'ng2-pdf-viewer';
import { RouterModule } from '@angular/router';
import { PDF_ROUTE } from 'app/pdf-view/pdf-view.route';
import { QrMenuSharedModule } from 'app/shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [PdfViewComponent],
  imports: [CommonModule, PdfViewerModule, RouterModule.forChild(PDF_ROUTE), QrMenuSharedModule, ReactiveFormsModule],
})
export class PdfViewModule {}
