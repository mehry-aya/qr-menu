import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { IMenuFiles, MenuFiles } from 'app/menu-management/menu-file/menu-files.model';
import { MenuFileService } from 'app/menu-management/menu-file/menu-file.service';
import { FormBuilder } from '@angular/forms';

@Component({
  selector: 'jhi-edit-menu-file',
  templateUrl: './edit-menu-file.component.html',
  styleUrls: ['./edit-menu-file.component.scss'],
})
export class EditMenuFileComponent implements OnInit {
  public id!: number;
  menu!: MenuFiles;
  isSaving = false;

  editForm = this.fb.group({
    category: [''],
    logo: [''],
    image: [''],
  });

  // editForm = new FormGroup({
  //   category: new FormControl(''),
  //   image: new FormControl(''),
  //   logo: new FormControl(''),
  // })

  constructor(private fb: FormBuilder, private activatedRoute: ActivatedRoute, private menuFileService: MenuFileService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['id'];

      this.menuFileService.getMenuFile(this.id).subscribe((menu: IMenuFiles) => {
        this.menu = menu;
        this.updateForm(menu);
      });
    });
  }

  previousState(): void {
    window.history.back();
  }

  save(): void {
    this.isSaving = true;
    this.editMenu(this.menu);
    if (this.menu.id !== undefined) {
      this.menuFileService.updateMenuFile(this.menu).subscribe(
        () => this.onSaveSuccess(),
        () => this.onSaveError()
      );
    }
  }

  private updateForm(menu: MenuFiles): void {
    this.editForm.patchValue({
      category: menu.category,
      logo: menu.logo,
      image: menu.image,
    });
  }

  private editMenu(menu: MenuFiles): void {
    menu.category = this.editForm.get(['category'])!.value;
    menu.logo = this.editForm.get(['logo'])!.value;
    menu.image = this.editForm.get(['image'])!.value;
  }

  private onSaveSuccess(): void {
    this.isSaving = false;
    this.previousState();
  }

  private onSaveError(): void {
    this.isSaving = false;
  }
}
