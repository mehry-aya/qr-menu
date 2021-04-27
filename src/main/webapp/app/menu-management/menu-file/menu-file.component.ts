import { Component, OnInit } from '@angular/core';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { IMenuFiles, MenuFiles } from 'app/menu-management/menu-file/menu-files.model';

@Component({
  selector: 'jhi-menu-file',
  templateUrl: './menu-file.component.html',
  styleUrls: ['./menu-file.component.scss'],
})
export class MenuFileComponent implements OnInit {
  public menuList: IMenuFiles[] = [];
  public menuForm: FormGroup;

  constructor(private menuFileService: MenuFileService, private fb: FormBuilder) {
    this.menuForm = this.createForm();
  }

  ngOnInit(): void {
    this.menuFileService.getAllMenu().subscribe(value => {
      this.menuList = value;
    });
  }

  public add(): void {
    const menu: MenuFiles = new MenuFiles(
      this.menuForm.get('category')?.value,
      this.menuForm.get('image')?.value,
      this.menuForm.get('logo')?.value
    );
    this.menuFileService.addMenuFile(menu).subscribe(() => {
      this.menuFileService.getAllMenu().subscribe(value => {
        this.menuList = value;
      });
    });
  }

  private createForm(): FormGroup {
    return this.fb.group({
      category: [null, [Validators.required]],
      image: [null, [Validators.required]],
      logo: [null, [Validators.required]],
    });
  }

  public delete(id: any): void {
    this.menuFileService.deleteMenuFile(id).subscribe(() => {
      this.menuFileService.getAllMenu().subscribe(value => {
        this.menuList = value;
      });
    });
  }
}
