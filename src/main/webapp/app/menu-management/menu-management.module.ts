import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MENU_MANAGEMENT_ROUTE } from './menu-management.route';
import { MenuFileComponent } from 'app/menu-management/menu-file/menu-file.component';
import { DigitalMenuComponent } from 'app/menu-management/digital-menu/digital-menu.component';
import { QrMenuSharedModule } from 'app/shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';
import { EditMenuFileModule } from 'app/menu-management/menu-file/edit-menu-file/edit-menu-file.module';
import { MenuManagementComponent } from './menu-management.component';
import { CommonModule } from '@angular/common';
import { QRCodeModule } from 'angularx-qrcode';

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(MENU_MANAGEMENT_ROUTE),
    QrMenuSharedModule,
    ReactiveFormsModule,
    EditMenuFileModule,
    QRCodeModule,
  ],
  declarations: [MenuFileComponent, DigitalMenuComponent, MenuManagementComponent],
})
export class MenuManagementModule {}
