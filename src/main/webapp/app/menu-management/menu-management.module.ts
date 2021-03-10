import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuManagementComponent } from './menu-management.component';
import { RouterModule } from '@angular/router';
import { MENU_MANAGEMENT_ROUTE } from './menu-management.route';

@NgModule({
  declarations: [MenuManagementComponent],
  imports: [CommonModule, RouterModule.forChild([MENU_MANAGEMENT_ROUTE])],
})
export class MenuManagementModule {}
