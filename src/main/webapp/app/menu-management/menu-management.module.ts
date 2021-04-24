import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MENU_MANAGEMENT_ROUTE } from './menu-management.route';
import { MenuFileComponent } from 'app/menu-management/menu-file/menu-file.component';
import { DigitalMenuComponent } from 'app/menu-management/digital-menu/digital-menu.component';
import { QrMenuSharedModule } from 'app/shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';
import { EditMenuFileComponent } from 'app/menu-management/menu-file/edit-Menu-file';

@NgModule({
  declarations: [MenuFileComponent, DigitalMenuComponent, EditMenuFileComponent],
  imports: [QrMenuSharedModule, ReactiveFormsModule, RouterModule.forChild(MENU_MANAGEMENT_ROUTE)],
})
export class MenuManagementModule {}
