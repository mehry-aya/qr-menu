import { Component, OnInit } from '@angular/core';
import { DigitalMenu } from 'app/menu-management/digital-menu/digital-menu.model';
import { DigitalMenuService } from 'app/menu-management/digital-menu/digital-menu.service';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'jhi-digital-menu',
  templateUrl: './digital-menu.component.html',
  styleUrls: ['./digital-menu.component.scss'],
})
export class DigitalMenuComponent implements OnInit {
  public digitalMenuList: DigitalMenu[] = [];
  public digitalForms: Map<number, FormGroup> = new Map<number, FormGroup>();

  constructor(private fb: FormBuilder, private digitalMenuService: DigitalMenuService) {
    // this.createForm();
  }

  ngOnInit(): void {
    this.digitalMenuService.getAllDigitalMenu().subscribe(value => {
      this.digitalMenuList = value;
    });
  }
  /* private createForm(){
    return this.fb.group({
      category:[''],
      image:[''],
      logo:['']

    });
} */
}
