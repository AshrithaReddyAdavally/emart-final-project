import { Injectable } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { EmartService } from './emart.service';

@Injectable({
  providedIn: 'root'
})
export class GuardService implements CanActivate {

  constructor(protected emartService: EmartService,protected router: Router) { }
  canActivate(route:ActivatedRouteSnapshot,state:RouterStateSnapshot):boolean
  {
    const userExist= !!this.emartService.existBuyer();
    if(userExist)
    {
        return true;
      }
      else
      {
          this.router.navigate(['login']);return false;
      }
  }
}
