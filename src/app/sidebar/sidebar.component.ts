import { Component, OnInit } from '@angular/core';
import { first } from 'rxjs/operators';
@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  user = '';
  users_type;
  user_type = '';
  isloggedin = false;
  constructor(){

    
    if(localStorage.length > 0 ){
      console.log(localStorage.length)
      var user_type = this.getCurrentUser();
    // this.showUserMenu(user_type);
    this.users_type = user_type['data']['user_type'];
    this.isloggedin = true;
    }
    else{
      this.users_type = false;
      
    }
  
   
  }
  ngOnInit() : void {
  }
  getCurrentUser(){
    if(localStorage.length > 0){
    return JSON.parse(localStorage.currentUser)
    }
  }

  
  // showUserMenu(user_type){
  //   // let user = user_type['data']['user_type'];
  //   console.log(user_type['data']['user_type']);
  // }
}