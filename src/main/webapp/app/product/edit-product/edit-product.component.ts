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
      this.productService.getProduct(this.id).subscribe(product => {
        this.product = product;
      });
    });
  }
}
