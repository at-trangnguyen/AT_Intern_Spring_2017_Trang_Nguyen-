import {Component, OnInit} from '@angular/core'
import { FormGroup, FormControl, FormBuilder } from '@angular/forms';

@Component({
	selector: 'my-app',
	templateUrl: './user.html'
})

export class UserComponent implements OnInit {
	public signupForm: FormGroup;
	users: any[];
	firstName = new FormControl(''); 
	lastName = new FormControl('');
	middleName = new FormControl('');
	email = new FormControl('');

	constructor(private builder: FormBuilder) {
		this.users =[];
	}

	ngOnInit() {
		this.signupForm = this.builder.group({
			firstname: this.firstName,
			lastname: this.lastName,
			middlename: this.middleName,
			email: this.email
		});
		this.firstName.valueChanges.subscribe(data => {
			this.emails();
		});
		this.lastName.valueChanges.subscribe(data => {
			this.emails();
		});
	}

	emails() {
		let mergeEmail = this.firstName.value +"."+ this.lastName.value + "@asiantech.vn";
		if ( this.firstName.value && this.lastName.value ) {
			this.email.setValue(mergeEmail);
		}
		else {
			this.email.setValue('');
		}
	}
	signup() {
		this.users.push(this.signupForm.value);
	}
}
