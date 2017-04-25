import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {HttpModule} from '@angular/http'

import { TrainerComponent }  from './trainer/trainer.component';
import { DetailComponent }  from './trainer/detail.component';
import { TrainerService } from './trainer/trainer.service'

@NgModule({
  imports:      [ BrowserModule, HttpModule],
  declarations: [ TrainerComponent, DetailComponent],
  bootstrap:    [ TrainerComponent ],
  providers: [TrainerService]
})
export class AppModule { }
