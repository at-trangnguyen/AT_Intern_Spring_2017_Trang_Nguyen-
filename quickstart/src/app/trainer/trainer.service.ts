import {Http} from '@angular/http'
import {Injectable} from '@angular/core'
import 'rxjs/add/operator/map'

@Injectable()
export class TrainerService {
  trainers :any[];
  constructor(private _http: Http) {
    this.trainers = [];
  }
  getAllTrainer() {
    return this._http.get('./data/trainer.json')
    .map((res :any) => {
      return res.json();
    });
  }
}