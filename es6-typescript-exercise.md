# Typescript + ES6

### Knowledge round-up

- **Typescript**

  - What is TypeScript and Why do we need it?

  TS is a open source project developed by Microsoft. It is superset of JS. What can be done in JS can be done in TS. TypeScript must be compiled to ES5 to run in most browsers.

  Advantages of TS: 

  + Be used in many frameworks

  + Support the features of the latest Javascript version 

  + TS support static typing. 

  + TS support OOP in class.

  - How can you get TypeScript and install it?

  	npm install -g typescript

  - How do you compile TypeScript files?

  	tsc --watch helloworld.ts helloworld.js

  - Which Object Oriented terms are supported by TypeScript? Write an example.

  	+ Inheritance: 

  	```
    class Shape {

      constructor(public width: number,  public height: number) { }

      ChuVi() {

        var cv = (this.width + this.height)*2;

        document.write(`Chu vi la ${cv}.`);

      }

      DienTich() {

      var dt = (this.width * this.height);

      document.write(`Dien tich la ${dt}.`);

      }

    }

    class HCN extends Shape {

      constructor(public width: number, public height: number) {

        super(width,height);

      } 

    }
  	```

    + Encapsulation: 

    ```
    class Carriage {

      private name: string;

      constructor(theName: string) {

        this.name = theName;

      }

    }

    var carriage = new Carriage('Honda');

    document.write(carriage.name); //error
    ```



  - How do you implement inheritance in TypeScript? Write an example.

  ```
  class Animal {

    constructor(public name: string, public leg: number) { }

    info() {

      document.write(`This is a ${this.name}. It have ${this.leg} legs.`);

    }

  }

  class Dog extends Animal {

    constructor(public name: string, public leg: number) {

      super(name,leg);

    }

  } 

  var dog = new Dog('dog',4);

  dog.info();
  ```
- **ES6**
  - Write an example for each of the following new features in ES6:  `Block scope variable` `Template Literals` `Multi-line strings` `Arrow functions` `For...of` `Default parameters`

  + Block scope variable: 
  ```
  function plug(a,b) {

    let a,b;

    return a + b;
  }

  console.log(plug(2,3));
  ```


  ```
  function plug(a,b) {

  const a = 1;

  let b;

  return a + b;

  }

  console.log(plug(2,3));

  //return 4
  ```

  + Template Literals: 

  ```
  var name = 'Trang';

  var greeting = `My name is ${name}`;

  console.log(greeting);
  ```

  + Arrow functions: 

  ```
  let trang = {

    name: 'Trang',

    age: '23',

    phone: '01667574836'

  }

  function greeting(user) {

   return `

     <div>

       <p>${user.name}</p>

       <p>${user.age}</p>

       <p>${user.phone}</p>

     </div>
   `
  }

  console.log(greeting(trang));


  ```
+ For...of 

```
let arr = [1, 2, 3, 4];

for( let x of arr) {

  console.log(x);

}
```
+ Default parameters :

```
function greeting(name = 'Trang') {

  console.log('My name is ${name}');
  
}

greeting();
```