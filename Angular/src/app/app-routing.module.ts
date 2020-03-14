import { NgModule, Component } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ItemListComponent } from './eMart/item/item-list/item-list.component';
import { ItemDisplayComponent } from './eMart/item/item-display/item-display.component';
import { CartListComponent } from './eMart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './eMart/bill/bill-view/bill-view.component';
import { BillListComponent } from './eMart/bill/bill-list/bill-list.component';
import { LoginComponent } from './eMart/login/login.component';
import { BuyerSignupComponent } from './eMart/buyer-signup/buyer-signup.component';
import { combineLatest } from 'rxjs';
import { SellerSignupComponent } from './emart/seller-signup/seller-signup.component';
import { GuardService } from './eMart/guard.service';
import { SellerItemListComponent } from './emart/seller/seller-item-list/seller-item-list.component';






const routes: Routes = [{
  path:'item-list',
  component: ItemListComponent,
  canActivate:[GuardService]
},
{
  path:'item-display/:iId',
  component: ItemDisplayComponent,
  canActivate:[GuardService]
  
},
{
  path:'cart-list',
  component: CartListComponent,
  canActivate:[GuardService]
},
{
  path:'bill-view',
  component: BillViewComponent
},
{
  path:'bill-list',
  component:BillListComponent,
  canActivate:[GuardService]
},
{
  path:'login',
  component:LoginComponent
},
{
  path:'buyer-signup',
  component:BuyerSignupComponent
},
{
path:'seller-signup',
component:SellerSignupComponent
},
{
  path: '',
  component: LoginComponent
},
{
path:'seller-item-list',
component:SellerItemListComponent
}
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
