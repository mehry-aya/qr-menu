import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuFileComponent } from './menu-file.component';
import { RouterModule } from '@angular/router';
import { MENU_FILE_ROUTE } from './menu-file.route';

@NgModule({
  declarations: [MenuFileComponent],
  imports: [CommonModule, RouterModule.forChild([MENU_FILE_ROUTE])],
})
export class MenuFileModule {}
