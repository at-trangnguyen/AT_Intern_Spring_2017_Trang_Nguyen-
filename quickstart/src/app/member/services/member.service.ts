import {Http} from '@angular/http'
import 'rxjs/add/operator/map'
import 'rxjs/add/operator/filter'
import {Injectable} from '@angular/core'
import {Observable} from 'rxjs/Observable'

@Injectable()

export class MemberService {
	constructor(private _http: Http) {
	}
	getAllMember() : Observable<any> {
		return this._http.get('./data/member.json')
		.map((res: any) => {
			return res.json();
		});
	}
	getMember(id: string) : Observable<any> {
    return this._http.get('./data/member.json')
    .map((res: any) => {
      return res.json().members[id];
    });
  }
}