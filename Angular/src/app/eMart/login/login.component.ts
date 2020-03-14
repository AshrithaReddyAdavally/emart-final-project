import { Component, OnInit } from '@angular/core';

import { Router } from '@angular/router';
import { EmartService } from '../emart.service';
import { LoginService } from '../login.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  username: string;
  password: string;
  buyer: boolean;
  seller: boolean;
  errorMessage: string;
  sign: string;
  currentBuyer: any;
  currentSeller:any;
  constructor(protected emartService: EmartService, protected router: Router, protected loginService: LoginService) { }

  ngOnInit(): void {
    this.errorMessage = '';
  }
  validate() {
    if (this.sign == 'buyer') {
      this.emartService.validateBuyer(this.username, this.password)
        .subscribe(
          (response) => {
            this.currentBuyer = response;
            this.emartService.setBuyerAndBills(this.currentBuyer);
            if (this.currentBuyer.id != 0) {
              this.loginService.loginBuyer(this.currentBuyer);
              this.router.navigate(['item-list']);
            }

            else {
              this.errorMessage = "Invalid username/password";

            }
          }
        );
    }
  else(this.sign == 'seller')
  {
this.emartService.validateSeller(this.username,this.password).subscribe(
  (response:any)=>{
    this.currentSeller = response;
    this.emartService.setSeller(this.currentSeller);
    if(this.currentSeller.id!=0){
      this.loginService.loginSeller(this.currentSeller);
      this.router.navigate(['item-list']);
    }
    else{
      this.errorMessage = "Invalid username/password";
    }
  }
)
  } 



  }
}
