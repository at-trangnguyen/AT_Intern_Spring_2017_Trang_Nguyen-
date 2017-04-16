# Angular 2

### Knowledge round-up

- **Component**

  - What is @Component decorator in Angular 2? What does @Component decorator do?
  
  + @Component decorator use to mark a class as an Angular component and collects component configuration metadata.

  + Define the selectors we will use in the view.

  + Define the template that you want to use.

  + Define the methods that you interact with on the view, for example, click on button A, what it would do.

  + Invokes the services needed to provide methods, properties for the component being used. 

- **Directive**

  - What is @Directive decorator in Angular 2? What does @Directive decorator do?

  	Directives are an HTML extension, in other words, the properties of the HTML tag Angular it defines. 

  	Syntax is ngPrefix. Ex: ngModule, ngFor.

  	There are three main types of directives in Angular 2:

	Component - directive with a template.

	Attribute directives - directives that change the behavior of a component or element but don't affect the template.

	Structural directives - directives that change the behavior of a component or element by affecting how the template is rendered.

- **Summary**

  - Explain @Input decorator in Angular 2?

  	@Input is used to define an input property to achieve component property binding.

  	@Input decorator binds a property within one component (child component) to receive a value from another component (parent component). This is one way communication from parent to child.

  - Explain @Output decorator in Angular 2?

  	@Output is used to define output property to achieve custom event binding.

  	@Output decorator binds a property of a component to send data from one component (child component) to calling component (parent component). This is one way communication from child to parent component.

  - What is difference between component and directive in Angular 2?

  * Component:

  + Component is a directive. Components are typically used to create UI widgets.

  + Only one component can be present per DOM element.

  + View are mandatory in the component.

  + Component is used to define pipes.

  * Directive:

  + Directives is used to add behavior to an existing DOM element.

  + Directive is use to design re-usable components.

  + Many directive can be used in a per DOM element.

  + Directive don’t have View.

  + Can’t define Pipes in directive.

  - Write an example for Two-way data binding in Angular 2?
  
```
import { Component} from '@angular/core';
@Component({
  selector: 'my-app',
  template: `
    <h1>{{title}}</h1>
    <h2>Hello {{person.name}} !</h2>
    <div>
      <label>Name: </label>
      <input [(ngModel)]="person.name" placeholder="name">
    </div>
  `
})
export class HelloComponent {
  title = 'Greeting';
  person: Person = {
  name: 'Trang'
};
}
export class Person {
  name: string;
}

```