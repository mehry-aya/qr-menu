import { Component, OnInit } from '@angular/core';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';
import { DigitalMenuService } from 'app/menu-management/digital-menu/digital-menu.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { Product } from 'app/product/product.model';
import { Category } from 'app/category/category.model';
import { CategoryService } from 'app/category/category.service';
import { ActivatedRoute } from '@angular/router';
import { ProductService } from 'app/product/product.service';
import { NgbModal, NgbModalConfig } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'jhi-digital-menu',
  templateUrl: './digital-menu.component.html',
  styleUrls: ['./digital-menu.component.scss'],
})
export class DigitalMenuComponent implements OnInit {
  public menuForm: FormGroup;
  public categoryForm: FormGroup;
  public id!: number;
  isSaving = false;
  public selectedCategory: any;
  public image!: UploadedFile;
  public digitalMenu!: DigitalMenu;
  public productList: Product[] = [];
  public categoryList: Category[] = [];
  public productForm: FormGroup;
  public data!: string;

  editForm = this.fb.group({
    name: [''],
  });

  constructor(
    private activatedRoute: ActivatedRoute,
    private fb: FormBuilder,
    private categoryService: CategoryService,
    private digitalMenuService: DigitalMenuService,
    private productService: ProductService,
    private modalService: NgbModal,
    private config: NgbModalConfig
  ) {
    this.productForm = this.createProductForm();
    config.backdrop = 'static';
    config.keyboard = false;
    this.menuForm = this.createMenuForm();
    this.categoryForm = this.createCategoryForm();
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idEstab'];

      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
        this.data = 'http://192.168.1.11:8080/menu/' + this.digitalMenu.id;
        this.selectedCategory = this.digitalMenu.categories ? this.digitalMenu.categories[0] : undefined;
        this.updateForm(value);
      });
    });
  }

  open(content: any): void {
    this.modalService.open(content);
  }

  createProductForm(): FormGroup {
    return this.fb.group({
      name: ['', [Validators.required]],
      description: ['', [Validators.required]],
      price: ['', [Validators.required]],
      rating: ['', [Validators.required]],
      image: [null, [Validators.required]],
    });
  }

  public addProduct(): void {
    const product: Product = new Product();
    product.name = this.productForm.get('name')?.value;
    product.description = this.productForm.get('description')?.value;
    product.price = this.productForm.get('price')?.value;
    product.rating = this.productForm.get('rating')?.value;
    product.image = this.image;
    product.category.id = this.selectedCategory.id;
    this.productService.addProduct(product, this.selectedCategory.id).subscribe(() => {
      this.productForm.reset();
      this.image = new UploadedFile();
      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];

    formData.append('files', file, file.name);
    this.productService.upload(formData).subscribe(image => {
      this.image = image;
    });
  }

  deleteFile(id: number): void {
    this.productService.deleteFile(id).subscribe(() => {
      this.image = new UploadedFile();
      this.productForm.get('image')?.reset();
    });
  }

  selectCategory(category: any): void {
    if (category === null) {
      this.selectedCategory = new Category();
    } else {
      this.selectedCategory = category;
    }
  }

  createMenuForm(): FormGroup {
    return this.fb.group({
      name: ['', [Validators.required]],
    });
  }
  createCategoryForm(): FormGroup {
    return this.fb.group({
      name: ['', [Validators.required]],
      level: ['', [Validators.required]],
    });
  }
  public addCategory(): void {
    const category: Category = new Category();
    category.name = this.categoryForm.get('name')?.value;
    category.level = this.categoryForm.get('level')?.value;
    category.digitalMenu.id = this.digitalMenu.id;
    this.categoryService.addCategory(category, this.digitalMenu.id).subscribe(() => {
      this.categoryForm.reset();
      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }

  public addMenu(): void {
    const digitalMenu: DigitalMenu = new DigitalMenu();
    digitalMenu.name = this.menuForm.get('name')?.value;
    this.digitalMenuService.addDigitalMenu(digitalMenu, this.id).subscribe(() => {
      this.menuForm.reset();
      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }

  public deleteCategory(id: any): void {
    this.categoryService.deleteCategory(id).subscribe(() => {
      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }
  public delete(id: any): void {
    this.digitalMenuService.deleteDigitalMenu(id).subscribe(() => {
      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }

  public updateForm(digitalMenu: DigitalMenu): void {
    this.menuForm.patchValue({
      name: digitalMenu.name,
    });
  }

  private editMenu(digitalMenu: DigitalMenu): void {
    digitalMenu.name = this.editForm.get(['name'])!.value;
  }

  save(): void {
    this.isSaving = true;
    this.editMenu(this.digitalMenu);
    if (this.digitalMenu.id !== undefined) {
      this.digitalMenuService.updateDigitalMenu(this.digitalMenu).subscribe(
        () => this.onSaveSuccess(),
        () => this.onSaveError()
      );
    }
  }

  private onSaveSuccess(): void {
    this.isSaving = false;
    this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
      this.digitalMenu = value;
    });
  }

  private onSaveError(): void {
    this.isSaving = false;
  }
}
