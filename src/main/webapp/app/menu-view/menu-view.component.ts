import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DigitalMenuService } from '../menu-management/digital-menu/digital-menu.service';
import { DigitalMenu } from '../menu-management/digital-menu/digital-menu.model';
import { UploadedFile } from '../menu-management/menu-file/uploaded-file.model';

@Component({
  selector: 'jhi-pdf-view',
  templateUrl: './menu-view.component.html',
  styleUrls: ['./menu-view.component.scss'],
})
export class MenuViewComponent implements OnInit {
  public id!: number;
  public menu!: DigitalMenu;

  constructor(private activatedRoute: ActivatedRoute, private digitalMenuService: DigitalMenuService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idFile'];

      this.digitalMenuService.getDigitalMenu(this.id).subscribe((menu: DigitalMenu) => {
        this.menu = menu;
      });
    });
  }
  public getImageUrl(image: UploadedFile): string {
    return image.path;
  }
}
