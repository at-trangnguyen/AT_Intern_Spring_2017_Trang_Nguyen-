import {Component} from '@angular/core'
import {TrainerService} from './trainer.service'
import {Http} from '@angular/http'

@Component({
  selector: 'my-app',
  templateUrl: './trainer.html'
})

export class TrainerComponent {
  trainers :any[];
  selectedItem :number;
  constructor( private _trainer: TrainerService) {
    this.trainers = [];
    this._trainer.getAllTrainer()
    .subscribe((data :any) => {
      this.trainers = data.trainers;
    });
    this.selectedItem = 0;
  }
  viewDetail(i :number) {
    this.selectedItem = i;
  }
}
