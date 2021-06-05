import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { DigitalMenuService } from 'app/menu-management/digital-menu/digital-menu.service';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';

@Component({
  selector: 'jhi-pdf-view',
  templateUrl: './pdf-view.component.html',
  styleUrls: ['./pdf-view.component.scss'],
})
export class PdfViewComponent implements OnInit {
  public id!: number;
  public menu!: DigitalMenu;
  public src!: string | null;

  constructor(
    private activatedRoute: ActivatedRoute,
    private menuFileService: MenuFileService,
    private digitalMenuService: DigitalMenuService
  ) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idFile'];

      this.digitalMenuService.getDigitalMenu(this.id).subscribe((menu: DigitalMenu) => {
        this.menu = menu;
      });
    });
  }
}
