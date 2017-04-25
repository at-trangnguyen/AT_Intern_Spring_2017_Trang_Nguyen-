import {Component, Input} from '@angular/core'
import {TrainerService} from './trainer.service'
import {Http} from '@angular/http'

@Component({
	selector: 'detail',
	templateUrl: './detail.html'
})

export class DetailComponent {
	@Input() selected :number = null;
	trainers :any[];
	constructor( private _trainer:TrainerService) {
		this.trainers = [];
		this._trainer.getAllTrainer()
		.subscribe((data :any) => {
			this.trainers = data.trainers;
		})
	}
}