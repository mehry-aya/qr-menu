import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { ProductService } from 'app/product/product.service';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { Product } from 'app/product/product.model';

@Component({
  selector: 'jhi-edit-product',
  templateUrl: './edit-product.component.html',
  styleUrls: ['./edit-product.component.scss'],
})
export class EditProductComponent implements OnInit {
  id!: number;
  isSaving = false;
  product!: Product;
  image!: UploadedFile;

  editForm = this.fb.group({
    name: [''],
    description: [''],
    price: [''],
    level: [''],
    rating: [''],
    image: [''],
  });

  constructor(private fb: FormBuilder, private activatedRoute: ActivatedRoute, private productService: ProductService) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['id'];

      this.productService.getProduct(this.id).subscribe((product: Product) => {
        this.product = product;
        this.updateForm(product);
      });
    });
  }
  private updateForm(product: Product): void {
    this.editForm.patchValue({
      name: product.name,
      description: product.description,
      price: product.price,
      rating: product.rating,
      level: product.level,
    });
  }
  private editProduct(product: Product): void {
    product.name = this.editForm.get(['name'])!.value;
    product.description = this.editForm.get(['description'])!.value;
    product.price = this.editForm.get(['price'])!.value;
    product.level = this.editForm.get(['level'])!.value;
    product.rating = this.editForm.get(['rating'])!.value;
    product.image = this.product.image;
  }
  public onUploadFile($event: any): void {
    const formData = new FormData();
    const file: File = $event.files[0];
    formData.append('files', file, file.name);
    this.productService.upload(formData).subscribe(image => {
      this.product.image = image;
    });
  }
  deleteFile(id: number): void {
    this.productService.deleteFile(id).subscribe(() => {
      this.product.image = new UploadedFile();
      this.editForm.get('image')?.reset();
    });
  }

  previousState(): void {
    window.history.back();
  }

  save(): void {
    this.isSaving = true;
    this.editProduct(this.product);
    if (this.product.id !== undefined) {
      this.productService.updateProduct(this.product).subscribe(
        () => this.onSaveSuccess(),
        () => this.onSaveError()
      );
    }
  }

  private onSaveSuccess(): void {
    this.isSaving = false;
    this.previousState();
  }

  private onSaveError(): void {
    this.isSaving = false;
  }
}
