# HTML + Javascript Exercise

### Knowledge round-up

- **Javascript**

  - What are the differences between a variable that is: `null`, `undefined`?

  	+ undefined : variable exist , but don’t have anything assigned to them. And type of this variable is undefined

  		ie: var name;

  	+ null : variable exist and have null assigned to them. And type of this variable is object.

  		ie: var name = null;

  - What is `use strict`? what are the advantages and disadvantages to using it?

  	+ if you put 'use strict;' in your code, it be executed in strict mode. 

  	+ Strict mode are used to : 

  		- Prevent use, and throw errors when programmers execute unsafe handlers.

  		- Disabling features may be confusing, or should not be used.

  		- Prevent the use of some words that may be used as keyworks in the future.

      * Some limit in strict mode :

      - Can not use a variable which undeclare. (in normal mode it can use as global variable)

        ie : number = 5; // not allow

      - Can not use an object which undeclare.

        ie: obj = {'trang':'1994', 'giang':'1998'}; //not allow

      - Can not delete a variable, function.

        ie: var number = 5;

            delete number; // not allow delete

            function area(width,height) {};

            detele area; // not allow

      - Parameters of a function are not allowed to overlap.

        ie: function area(width, width) {}; // not allow

      - Do not use octal numeric literals (ie. var number = 01010;)

      - The string "eval" cannot be used as a variable. 

      - Can not use of some words that may be used as keyworks in the future: let, public, private, protected, interface, ....

  	+ Advantage of strict mode : sometime in normal mode, we encountered cases where the program was still running but did not produce the correct results. We do not know why. Strict mode help us avoid them exactly.
 
    + Disadvantage os strict mode: We will have many difficulties when some features are no usable.
 
  - What are the differences between `==` and `===`? Write an example for each case (if any)?

    + '==' : compares values, means equal.

    + '===': compares values and type, means identically equal.

    ie: 1 == "1" =>true (auto convert to value)

        1 === "1" => false  (different type)

  - Explain the differences on the usage of foo between `function foo() {}` and `var foo = function() {}`

    + `function foo() {}` is a funtion declaration : Declared functions are not executed immediately. They will excute when they are called upon.

    + `var foo = function() {}` is a funtion expresstion: A function expression can be stored in a variable so the variable can be used as a funtion.

  - How can JavaScript manipulate HTML dynamically?

  + DOM and BOM help it.
  
  - How to store a Javascript variable at client side?