import { Injectable } from '@angular/core';
import { Category } from './category';
import { SubCategory } from './sub-category';
import { Item } from './item';
import { Cart } from './cart';
import { Bill } from './bill';
import { Buyer } from './buyer';
import { Seller } from './seller';


import {HttpClient, HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class EmartService {
  categories : Category[];
  subCategories : SubCategory[];
  allItems : Item[]; 
  cartItems : Item[];
  //items: Item[];
  //cart: Cart;
  //allBills = [];
  allBills:any;
  currentBuyer:any;
  currentSeller:any;
  //allBuyers:  Buyer[];
  allSellers: Seller[];

  
  
  
  constructor(protected http:HttpClient) {
    

  this.cartItems =[];
  this.allBills = [];
  
}
getAllItems(): any{
  return this.http.get("http://localhost:8087/BuyerItemService/emart/item/all");
}
getCategories(): Category[]
{
  return[].concat(this.categories);
}
getSubCategories(): SubCategory[]
{
  return[].concat(this.subCategories);
}
getAllBills():any{
return this.allBills;
}
setBuyerAndBills(currentBuyer){
  this.currentBuyer = currentBuyer;
  this.allBills = currentBuyer.allBills;
}
setSeller(currentSeller){
  this.currentBuyer = currentSeller;
  this.allBills = currentSeller.allBills;
}
getcurrentSeller(){
  console.log(this.currentSeller);
  return this.currentSeller;
}
getcurrentBuyer(){
  console.log(this.currentBuyer);
  return this.currentBuyer;
}
getItem(itemId:string) :any{
return this.http.get("http://localhost:8087/BuyerItemService/emart/item/"+itemId);
}
getAllSItems()
{

  return this.http.get("http://localhost:8087/LoginService/emart/seller/"+this.currentSeller?.id);
}

 

addToCart(item:any)
{
  this.cartItems.push(item);
}

  getAllCart()
  {
        return [].concat(this.cartItems);
  }
deleteCartItem(itemId: number)
{
  let size = this.cartItems.length;
  for(let i=0;i<size;i++)
  {
      if(this.cartItems[i].id == itemId)
      {
        this.cartItems.splice(i,1);
      }
  }
}
addBill(Date:Date, amount: number) {
  let allBillDetails:any[] = [];
for(let i=0;i<this.cartItems.length;i++){
  allBillDetails.push({
    billDetailsId:0,
    bill:null,
    item:this.cartItems[i]
  })
}
  let bill: any = {
    id: 0,
     type: 'Debit',
    date: Date,
    remarks: 'good',
    item: this.cartItems,
    amount: amount,
    buyer:{
      id:this.currentBuyer.id
    },
    allBillDetails:allBillDetails
  }
  this.allBills.push(bill);
  this.cartItems = [];
  console.log("before:" +JSON.stringify(bill));
  return this.http.post("http://localhost:8087/BuyerItemService/emart/bill",bill);

}
getBuyer(){
return this.http.get("http://localhost:8087/LoginService/emart/buyer/"+this.currentBuyer.id);
}
addBuyer(buyer:any){
  console.log(buyer);
  return this.http.post("http://localhost:8087/BuyerSignupService/emart/buyer",buyer);
}
addSeller(seller:any){
  return this.http.post("http://localhost:8087/LoginService/emart/seller",seller);
}
existBuyer(){
  return this.currentBuyer;
}



  validateBuyer(username:string,password:string){
    
    let crendential = username+ ':' +password;
  let headers = new HttpHeaders();
  headers = headers.set('Authorization', crendential);
  return this.http.get("http://localhost:8087/LoginService/emart/validate",{headers});
  }

  


 validateSeller(username:string,password:string){
   
    let crendential = username+ ':' +password;
  let headers = new HttpHeaders();
  headers = headers.set('Authorization', crendential);
  return this.http.get("http://localhost:8087/LoginService/emart/validateSeller",{headers});
  }
}
