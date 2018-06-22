import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { AlertService } from '../_services/alert.service';
import { INTERNAL_BROWSER_DYNAMIC_PLATFORM_PROVIDERS } from '@angular/platform-browser-dynamic/src/platform_providers';

@Injectable()
export class AuthenticationService {
    constructor(private http: HttpClient,private alertService: AlertService,
        private route: ActivatedRoute,
        private router: Router) { }
    private headers = new Headers({'Content-Type': 'application/json'});
    login(username: string, password: string) {
        
        // return this.http.post<any>('http://localhost/my-app/webservice/signin.php', { username: username, password: password })
        return this.http.post<any>('http://localhost/laravel-angular/public/ws-login', { email: username, password: password,headers: this.headers})
            .pipe(map(user => {
                console.log(user)
                
                // login successful if there's a jwt token in the response
                if (user && user.status==101) {
                    // store user details and jwt token in local storage to keep user logged in between page refreshes
                    localStorage.setItem('currentUser', JSON.stringify(user));
                    
                }
                if((user && (user.status==102 || user.status==103)))
                {
                    localStorage.setItem('currentUser', JSON.stringify(user));
                  
                }
               
                // this.alertService.success('Registration successful', true);
                return user;
            }));
    }


    
    logout() {
        // remove user from local storage to log user out
        localStorage.removeItem('currentUser');
        this.router.navigate(['/login']);
    }
}