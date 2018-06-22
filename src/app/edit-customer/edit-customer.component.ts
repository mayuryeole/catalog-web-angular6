import { Component, OnInit } from '@angular/core';
import { UserService } from '../_services/user.service';
import { Customer } from '../customer';
import { Observable } from 'rxjs';
import { ActivatedRoute,Params } from '@angular/router';
import { FormBuilder, FormGroup, Validators , FormControl} from '@angular/forms';
import { AlertService } from '../_services/alert.service';
import { Router } from '@angular/router';
import { first, last } from 'rxjs/operators';



@Component({
  selector: 'app-edit-customer',
  templateUrl: './edit-customer.component.html',
  styleUrls: ['./edit-customer.component.css']
})
export class EditCustomerComponent implements OnInit {
  updateCustomer: FormGroup;
  loading = false;
  submitted = false;
  editMode = true;
  
  customers:Customer[];
  page : Object;
  
  
  constructor(
    private route:ActivatedRoute,
    private userService:UserService,
    private formBuilder: FormBuilder,
    private router: Router,
    private alertService : AlertService

  ) {
   }

   get f() { return this.updateCustomer.controls; }

   onSubmit(){
    this.updateCustomer = this.formBuilder.group({
      first_name: ['', Validators.required],
      last_name: ['', Validators.required],
      customer_name : ['', Validators.required],
      phone : ['', Validators.required],
      country : ['', Validators.required],
      state : ['', Validators.required],
      city : ['', Validators.required],
      postal_code : ['', Validators.required],
      website : ['', Validators.required],
      address_1 : ['', Validators.required],
      address_2 : ['', Validators.required],
      ar_acct : ['', Validators.required],
      email : ['', Validators.required],
      division_id : ['', Validators.required],
     
    });

  console.log(this.updateCustomer.invalid);
//  if (this.updateCustomer.invalid) {
//   return;

// }
// else{

this.loading = true;
        this.userService.updateCustomerDetail(this.updateCustomer.value)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Customer Updated Successfully!', true);
                    this.router.navigate(['/customer-list']);
                },
                error => {
                    this.alertService.error(error);
                    this.loading = false;
                });
   }
  // }
   userId = "";
  ngOnInit() {
    this.route.params.subscribe((params: Params) => {
       this.userId = params['id'];
    });

 // console.log(this.userId);
  this.userService.getById(this.userId).subscribe((data: Customer[]) =>{
    console.log(data["details"]);
     this.customers= data["details"];
    
    // this.updateCustomer.setValue(this.customers);
    //  this.customers["division"] = data["division"];
      
    //  this.initForm();
    //  console.log(this.customers["division"]);
 
    });


    }

  //   initForm() {
  //     let customer_name = '';
  //     let first_name = '';
  //     let last_name = '';
  //     let phone = '';
  //     let country = '';
  //     let state = '';
  //     let city = '';
  //     let postal_code = '';
  //     let website = '';
  //     let address_1 = '';
  //     let address_2 = '';
  //     let ar_acct = '';
  //     let email ='';
  //     // let division_id ='';
  //     if (this.editMode) {
  //         console.log(this.customers["first_name"]);
  //         console.log(this.customers["last_name"]);
  //         console.log(this.customers["phone"]);
  //         customer_name = this.customers["customer_name"];
  //         first_name = this.customers["first_name"];
  //         last_name = this.customers["last_name"];
  //         phone = this.customers["phone"];
  //         country = this.customers["country"];
  //         state = this.customers["state"];
  //         city = this.customers["city"];
  //         postal_code = this.customers["postal_code"];
  //         website = this.customers["website"];
  //         ar_acct = this.customers["ar_acct"];
  //         address_1 = this.customers["address_1"];
  //         address_2 = this.customers["address_2"];
  //         email = this.customers["email"];
  //         // division_id = this.customers["division"]["name"];
  //     }
  //     this.updateCustomer = new FormGroup({
  //         'customer_name': new FormControl(customer_name),
  //         'first_name': new FormControl(first_name),
  //         'last_name': new FormControl(last_name),
  //         'phone': new FormControl(phone),
  //         'country': new FormControl(country),
  //         'state': new FormControl(state),
  //         'city': new FormControl(city),
  //         'postal_code': new FormControl(postal_code),
  //         'ar_acct': new FormControl(ar_acct),
  //         'website': new FormControl(website),
  //         'address_1': new FormControl(address_1),
  //         'address_2': new FormControl(address_2),
  //         'email':new FormControl(email)
          

  //     })
  // };

}
