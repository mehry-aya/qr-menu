import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import './vendor';
import { QrMenuSharedModule } from 'app/shared/shared.module';
import { QrMenuCoreModule } from 'app/core/core.module';
import { QrMenuAppRoutingModule } from './app-routing.module';
import { QrMenuHomeModule } from './home/home.module';
import { QrMenuEntityModule } from './entities/entity.module';
// jhipster-needle-angular-add-module-import JHipster will add new module here
import { MainComponent } from './layouts/main/main.component';
import { NavbarComponent } from './layouts/navbar/navbar.component';
import { FooterComponent } from './layouts/footer/footer.component';
import { PageRibbonComponent } from './layouts/profiles/page-ribbon.component';
import { ErrorComponent } from './layouts/error/error.component';
import { MenuManagementModule } from 'app/menu-management/menu-management.module';
import { ReactiveFormsModule } from '@angular/forms';
import { EstablishmentModule } from 'app/establishment/establishment.module';

@NgModule({
  imports: [
    BrowserModule,
    QrMenuSharedModule,
    QrMenuCoreModule,
    QrMenuHomeModule,
    // jhipster-needle-angular-add-module JHipster will add new module here
    QrMenuEntityModule,
    QrMenuAppRoutingModule,
    MenuManagementModule,
    EstablishmentModule,
    ReactiveFormsModule,
  ],
  declarations: [MainComponent, NavbarComponent, ErrorComponent, PageRibbonComponent, FooterComponent],
  bootstrap: [MainComponent],
})
export class QrMenuAppModule {}
