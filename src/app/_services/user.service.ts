import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';

import { User } from '../user';
import { Customer } from '../customer';

@Injectable()
export class UserService {
    constructor(private http: HttpClient) { }

    getAll() {
        return this.http.get<any>('http://localhost/laravel-angular/public/ws-get-customer-list');
       
}
getSalesCustomer(user_id) {
    return this.http.get<any>('http://localhost/laravel-angular/public/ws-get-sales-customer-list/'+user_id);
   
}


    getById(user_id) {
        // console.log(user_id);
        return this.http.get('http://localhost/laravel-angular/public/ws-get-customer-data/'+user_id);

    }

    updateCustomerDetail(user: Customer) {
        console.log(user);
        // return false;
           return this.http.post('http://localhost/laravel-angular/public/ws-update-customer-data/'+user.customer_id ,user);
          // return this.http.post('http://localhost/laravel-5.4-master/public/ws-register', user);
          
      }

    create(user: User) {
      console.log(user);
      // return false;
         return this.http.post('http://localhost/catalog/angular-register/webservice/signup.php', user);
        // return this.http.post('http://localhost/laravel-5.4-master/public/ws-register', user);
        
    }

    update(user: User) {
        return this.http.put('/api/users/' + user.id, user);
    }

    delete(id: number) {
        return this.http.delete('/api/users/' + id);
    }
    createUser(user: User) {
        return this.http.post('/api/users/', user);
      }


      
}
