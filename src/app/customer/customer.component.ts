import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { Customer } from '../customer';
// import { DataTablesModule } from 'node_modules/angular-datatables';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClient } from '@angular/common/http';
import { CommonModule } from '@angular/common';
import { map } from 'rxjs/operators';
import { UserService } from '../_services/user.service';

@Component({
  selector: 'app-customer',
  templateUrl: './customer.component.html',
  styleUrls: ['./customer.component.css']
})
export class CustomerComponent implements OnInit {
  restItems : any;
  
  public temp_var:Object = false;
  // dtOptions: DataTables.Settings = {};

  constructor(
    private http : HttpClient,
    private userService : UserService
  ) {
    
   }
   user = "";
   user_id = ''; 
  customers:Customer[];
  
  ngOnInit() : void {
    // this.getUsers();

    var user = this.getUser();
    var user_id = user['data']['user_id'];
   
    this.userService.getSalesCustomer(user_id).subscribe((data: Customer[]) =>{
    //  console.log(data);
      this.customers = data;
      // this.value = data;
      this.temp_var = true;

  });

  //   this.userService.getAll().subscribe((data: Customer[]) =>{
  //    console.log(data);
  //     this.customers = data
  // });
}     

getUser(){
  if(localStorage.length > 0){
    return JSON.parse(localStorage.currentUser)
    }


  // getUsers(){
  //  this.userService.getAll();
  //  console.log(localStorage.customers);
  // //  .subscribe(data => data); 
  // }

}

}


  

   