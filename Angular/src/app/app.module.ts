import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {FormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ItemListComponent } from './eMart/item/item-list/item-list.component';
import { ItemDisplayComponent } from './eMart/item/item-display/item-display.component';
import { CartListComponent } from './eMart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './eMart/bill/bill-view/bill-view.component';
import { BillListComponent } from './eMart/bill/bill-list/bill-list.component';
import { HttpClientModule, HttpHeaders } from '@angular/common/http';
import { LoginComponent } from './eMart/login/login.component';
import { HeaderComponent } from './eMart/header/header.component';
import { BuyerSignupComponent } from './eMart/buyer-signup/buyer-signup.component';
import { SellerSignupComponent } from './emart/seller-signup/seller-signup.component';
import { GuardService } from './eMart/guard.service';
import { SellerItemListComponent } from './emart/seller/seller-item-list/seller-item-list.component';
import { SellerItemEditComponent } from './emart/seller/seller-item-edit/seller-item-edit.component';




@NgModule({
  declarations: [
    AppComponent,
   
    ItemListComponent,
    ItemDisplayComponent,
    CartListComponent,
    BillViewComponent,
    BillListComponent,
    LoginComponent,
    HeaderComponent,
    BuyerSignupComponent,
    SellerSignupComponent,
    SellerItemListComponent,
    SellerItemEditComponent
    
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
  FormsModule
  ],
  providers: [GuardService],
  bootstrap: [AppComponent]

})
export class AppModule { }
