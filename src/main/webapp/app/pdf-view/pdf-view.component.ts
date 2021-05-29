import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';

@Component({
  selector: 'jhi-pdf-view',
  templateUrl: './pdf-view.component.html',
  styleUrls: ['./pdf-view.component.scss'],
})
export class PdfViewComponent implements OnInit {
  public id!: number;
  public menu!: MenuFiles;
  public src!: string | null;

  constructor(private activatedRoute: ActivatedRoute, private menuFileService: MenuFileService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idFile'];

      this.menuFileService.getMenuFile(this.id).subscribe((menu: MenuFiles) => {
        this.menu = menu;
        this.src = 'http://192.168.1.11:8080/' + this.menu.uploadedFile.path;
      });
    });
  }
}
