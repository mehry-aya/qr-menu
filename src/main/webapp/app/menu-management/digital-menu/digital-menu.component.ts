import { Component, OnInit } from '@angular/core';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';
import { DigitalMenuService } from 'app/menu-management/digital-menu/digital-menu.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NgbRatingConfig } from '@ng-bootstrap/ng-bootstrap';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { Product } from 'app/product/product.model';
import { ProductService } from 'app/product/product.service';
import { Category } from 'app/category/category.model';
import { CategoryService } from 'app/category/category.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'jhi-digital-menu',
  templateUrl: './digital-menu.component.html',
  styleUrls: ['./digital-menu.component.scss'],
  providers: [NgbRatingConfig],
})
export class DigitalMenuComponent implements OnInit {
  // public productForm: FormGroup;
  public menuForm: FormGroup;
  public id!: number;
  isSaving = false;
  public image!: UploadedFile;
  public product!: Product;
  public digitalMenu!: DigitalMenu;
  public digitalMenuList: DigitalMenu[] = [];
  public productList: Product[] = [];
  public categoryList: Category[] = [];

  editForm = this.fb.group({
    name: [''],
  });

  constructor(
    private activatedRoute: ActivatedRoute,
    private config: NgbRatingConfig,
    private fb: FormBuilder,
    private categoryService: CategoryService,
    private digitalMenuService: DigitalMenuService,
    private productService: ProductService
  ) {
    config.max = 5;
    config.readonly = true;
    // this.productForm = this.createForm();
    this.menuForm = this.createMenuForm();
  }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idEstab'];

      this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
    this.digitalMenuService.getDigitalMenu(this.digitalMenu.id).subscribe(digitalMenu => {
      this.digitalMenu = digitalMenu;
      this.updateForm(digitalMenu);
    });
  }

  createMenuForm(): FormGroup {
    return this.fb.group({
      name: ['', [Validators.required]],
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

  // this.digitalMenuService.getDigitalMenu(this.digitalMenu.id).subscribe(() =>{
  //
  // this.digitalMenuService.updateDigitalMenu(digitalMenu).subscribe(() =>{
  //   this.digitalMenuService.getAlldigitalMenusByEstablishment(this.id).subscribe(value => {
  //     this.digitalMenu = value;
  //   });
  // });
  // });

  // createForm(): FormGroup {
  //   return this.fb.group({
  //     name: ['', [Validators.required]],
  //     description: ['', [Validators.required]],
  //     price: ['', [Validators.required]],
  //     rating: ['', [Validators.required]],
  //     image: [null, [Validators.required]],
  //   });
  // }

  // public add(): void {
  //   const product: Product = new Product();
  //   product.name = this.productForm.get('name')?.value;
  //   product.description = this.productForm.get('description')?.value;
  //   product.price = this.productForm.get('price')?.value;
  //   product.rating = this.productForm.get('rating')?.value;
  //   product.image = this.image;
  //   this.productService.addProduct(product).subscribe(() => {
  //     this.productForm.reset();
  //     this.image = new UploadedFile();
  //     this.productService.getAllProducts().subscribe(value => {
  //       this.productList = value;
  //     });
  //   });
  // }

  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];

    formData.append('files', file, file.name);
    this.productService.upload(formData).subscribe(image => {
      this.image = image;
    });
  }

  // public delete(id: any): void {
  //   this.productService.deleteProduct(id).subscribe(() => {
  //     this.digitalMenuService.getAllDigitalMenu().subscribe(value => {
  //       this.digitalMenuList = value;
  //     });
  //   });
  // }

  // deleteFile(id: number): void {
  //   this.productService.deleteFile(id).subscribe(() => {
  //     this.product.image = new UploadedFile();
  //     this.productForm.get('image')?.reset();
  //   });
  // }

  public getImageUrl(image: UploadedFile): string {
    return image.path;
  }
}
