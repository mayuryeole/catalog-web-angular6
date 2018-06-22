import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { routing }        from './app.routing';
import { RegisterComponent } from './register/register.component';
import { UserService } from './_services/user.service';
import { AuthenticationService } from './_services/authentication.service';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { AlertService } from './_services/alert.service';
import { AlertComponent } from './_directive/alert/alert.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { CatalogComponent } from './catalog/catalog.component';
import { PlaceOrderComponent } from './place-order/place-order.component';
import { SlideshowModule } from 'ng-simple-slideshow';
import { CustomerComponent } from './customer/customer.component';
import { AddCustomerComponent } from './add-customer/add-customer.component';
import { EditCustomerComponent } from './edit-customer/edit-customer.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    AlertComponent,
    SidebarComponent,
    DashboardComponent,
    CatalogComponent,
    PlaceOrderComponent,
    CustomerComponent,
    AddCustomerComponent,
    EditCustomerComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    routing,
    SlideshowModule
  ],
  providers: [
    AuthenticationService,
    UserService,
    AlertService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
