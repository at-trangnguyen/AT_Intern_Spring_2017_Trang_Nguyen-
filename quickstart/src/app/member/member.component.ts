import {Component} from '@angular/core'
import {Http} from '@angular/http'
import {MemberService} from './services/member.service'

@Component({
	selector: 'my-app',
	templateUrl: './template/member.html'
})

export class MemberComponent {
	members: any[];
	selectedMember: any;
	constructor(private _member: MemberService) {
		this.members = [];
		this._member.getAllMember()
		.subscribe((data: any) => {
			this.members = data.members;
		})
	}
	viewDetail(id: string) {
		this.selectedMember = id;
	}
}