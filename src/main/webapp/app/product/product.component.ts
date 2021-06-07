import { Component, Input, OnInit } from '@angular/core';
import { Product } from './product.model';
import { FormBuilder } from '@angular/forms';
import { ProductService } from 'app/product/product.service';
import { NgbModal, NgbModalConfig, NgbRatingConfig } from '@ng-bootstrap/ng-bootstrap';
import { UploadedFile } from 'app/menu-management/menu-file/uploaded-file.model';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';
import { DigitalMenuService } from 'app/menu-management/digital-menu/digital-menu.service';
import { Category } from 'app/category/category.model';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'jhi-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss'],
  providers: [NgbRatingConfig, NgbModalConfig, NgbModal],
})
export class ProductComponent implements OnInit {
  public productList: Product[] = [];
  public id!: number;
  public digitalMenu!: DigitalMenu;
  public image!: UploadedFile;

  @Input() product!: Product;
  @Input() category!: Category;

  constructor(
    private activatedRoute: ActivatedRoute,
    private productService: ProductService,
    private fb: FormBuilder,
    private digitalMenuService: DigitalMenuService
  ) {}

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(data => {
      this.id = data['idEstab'];
    });
  }

  public deleteProduct(id: any): void {
    this.productService.deleteProduct(id).subscribe(() => {
      this.digitalMenuService.getDigitalMenuByEstablishment(this.id).subscribe(value => {
        this.digitalMenu = value;
      });
    });
  }

  public getImageUrl(image: UploadedFile): string {
    return image.path;
  }
}
