import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Seller } from '../seller';
import { EmartService } from '../emart.service';

@Component({
  selector: 'app-seller-signup',
  templateUrl: './seller-signup.component.html',
  styleUrls: ['./seller-signup.component.css']
})
export class SellerSignupComponent implements OnInit {
seller:any;
    username :string='';
      password : string='';
      company : string='';
      brief : string='';
      gst : number;
      address : string='';
      email : string='';
      website : string='';
      contact :number;
  constructor(protected emartService:EmartService,protected router:Router) {
    
    }
   

  ngOnInit(): void {
  }
addSeller(){

 let seller:Seller = {
      id:0,
      username:this.username,
      password:this.password,
      company : this.company,
      brief : this.brief,
      gst : this.gst,
      address : this.address,
      email : this.email, 
      website :this.website,
      contact : this.contact
                        
    };
    console.log(seller);
    this.emartService.addSeller(seller).subscribe(
      (response: any)=>{
        //this.buyers.push(response);
      }
    );
  
 this.router.navigate(['login']);
}
}
