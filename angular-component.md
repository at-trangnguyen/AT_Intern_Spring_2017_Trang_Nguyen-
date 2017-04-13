# Angular 2

### Knowledge round-up

- **Component**

  - Briefly explain Event Binding in Angular?

  	It help us catch the child’s events from the parent

  	Event binding can be defined either by wrapping the event in (paranthesis), or by prefixing it with on-.

  - Briefly explain Data Binding in Angular?

  	Data binding in AngularJS is the synchronization between the model and the view. When data in the model changes, the view reflects 
  	the change, and when data in the view changes, the model is updated as well. This happens immediately and automatically, which makes 
  	sure that the model and the view is updated at all times. We use the ngModel directive.

  - What are Event Emitters and how it works in Angular?

  	EventEmitter is a class in angular framework. It has emit() method that emits custom events. We can use EventEmitter in custom event binding. 

  - Explain the life cycle hooks of Angular application?

  	A component has a lifecycle managed by Angular.
	Angular creates it, renders it, creates and renders its children, checks it when its data-bound properties change, and destroys it before removing it from the DOM.

	+ ngOnChange: Respond when Angular sets data-bound input properties. The method receives a SimpleChanges object of current and previous property values.

	+ ngOnInit : Initialize the directive/component after Angular first displays the data-bound properties and sets the directive/component's input properties.

	+ ngDoCheck: Detect and make changes. Called everytime find change.

	+ ngOnDestroy: Retrieve before Angular destroys directive/component.

	+ ngAfterContentInit: After the angular output the content to the view.

	+ ngAfterContentChecked: After Angular checks for content constraints to output content to the view.

	+ ngAfterViewInit: After Angular creates the view of the component.

	+ ngAfterViewChecked: After Angular check the data bindinh on the view
	
- **Extra**

  - Briefly explain ElementRef in Angular? Write an example.
