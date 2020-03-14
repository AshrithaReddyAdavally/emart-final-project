import { Component, OnInit } from '@angular/core';

import { EmartService } from '../../emart.service';

import { Router } from '@angular/router';

@Component({
  selector: 'app-item-list',
  templateUrl: './item-list.component.html',
  styleUrls: ['./item-list.component.css']
})
export class ItemListComponent implements OnInit {
  allitems: any;
  emartservice: any;
  isfiltered:boolean=false;
  filteredItems:any;
  toPrice:number;
  fromPrice:number;
  constructor(protected emart : EmartService, protected router :Router) 
  {
    this.filteredItems=[];
   }

  ngOnInit(): void {
    this.emart.getAllItems().subscribe(
      (Response:any)=>{
        this.allitems=Response;
      }
    );
      }
    
   
  displayItemDetails(itemId :number)
{
  
  this.router.navigate(['/item-display/'+itemId]);
}
filterItems()
  {
    this.isfiltered=true;
    for(let item of this.allitems)
    {
      if(item.price<=this.toPrice && item.price>=this.fromPrice)
      {
this.filteredItems.push(item);
      }
    }
    console.log("filtered items"+JSON.stringify(this.filteredItems));
  }
}
