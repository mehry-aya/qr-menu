import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DigitalMenuComponent } from './digital-menu.component';
import { RouterModule } from '@angular/router';
import { DIGITAL_MENU_ROUTE } from './digital-menu.route';

@NgModule({
  declarations: [DigitalMenuComponent],
  imports: [CommonModule, RouterModule.forChild([DIGITAL_MENU_ROUTE])],
})
export class DigitalMenuModule {}
