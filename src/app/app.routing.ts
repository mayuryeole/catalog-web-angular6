import { Routes, RouterModule } from '@angular/router';

// import { HomeComponent } from './home';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
// import { AuthGuard } from './_guards';
import { DashboardComponent } from './dashboard/dashboard.component';
import { CatalogComponent } from './catalog/catalog.component';
import { PlaceOrderComponent } from './place-order/place-order.component';
import { CustomerComponent } from './customer/customer.component';
import { AddCustomerComponent } from './add-customer/add-customer.component';
import { EditCustomerComponent } from './edit-customer/edit-customer.component';


const appRoutes: Routes = [
    { path: '', component: LoginComponent },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },

    // otherwise redirect to home
    // { path: '**', redirectTo: '' },

  {path : 'dashboard', component : DashboardComponent },
  {path : 'catalog', component : CatalogComponent },
  {path : 'add-to-cart',component : PlaceOrderComponent},
 
  {path : "customer-list",component : CustomerComponent},
  {path : "edit-customer/:id",component : EditCustomerComponent},
  
  {path : "add-customer",component : AddCustomerComponent},
  
      // {
      //   path : "edit-customer",
      //   component : CustomerComponent
      // },
      
    //   {
    //     path : "cart",
    //     component : CartComponent
    //   },
];

export const routing = RouterModule.forRoot(appRoutes);