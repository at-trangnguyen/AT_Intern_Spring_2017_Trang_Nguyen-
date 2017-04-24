import {Component, Input, OnChanges} from '@angular/core'
import {MemberService} from './services/member.service'
@Component({
  selector: 'detail',
  templateUrl: `./template/detail.html`
})

export class DetailComponent {
  @Input() selected: any;
  selectedMember: any;
  constructor(private _member: MemberService) {
    this.selectedMember = null;
  }
  ngOnChanges() {
    this._member.getMember(this.selected)
    .subscribe((data: any) => {
      this.selectedMember = data;
    })
  }
}