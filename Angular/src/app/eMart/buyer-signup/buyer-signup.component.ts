import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { Buyer } from '../buyer';
import { EmartService } from '../emart.service';

@Component({
  selector: 'app-buyer-signup',
  templateUrl: './buyer-signup.component.html',
  styleUrls: ['./buyer-signup.component.css']
})
export class BuyerSignupComponent implements OnInit {
  username:string='';
  password:string='';
  email:string='';
  mobile:number;
  date:Date = new Date();
  //buyers: any;
  constructor(protected router: Router,protected emartService: EmartService) { }

  ngOnInit(): void {
  }
  addBuyer(){
    
    let buyer = {
      id:0,
      username:this.username,
      password:this.password,
      email:this.email,
      mobile:this.mobile,
      date:this.date
                        
    };
    console.log(buyer);
    this.emartService.addBuyer(buyer).subscribe(
      (response: any)=>{
        //this.buyers.push(response);
      }
    );
  
 this.router.navigate(['login']);
}
}
