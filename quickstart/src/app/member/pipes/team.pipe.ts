import {Pipe, PipeTransform} from '@angular/core'

@Pipe({
	name: 'team'
})

export class TeamPipe implements PipeTransform {
	transform(members: any, teamName: string) {
    return members.filter((x: any) => x.team === teamName);
	}
}