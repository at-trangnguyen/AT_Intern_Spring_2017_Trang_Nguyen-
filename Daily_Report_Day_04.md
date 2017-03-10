Daily Report

- Ruby is a object-oriented programming language. Because every thing in Ruby can get funtion.
- Name of funtion, variable: snake_case
  Name of class, module :CamelCase and camelCase
- Comments : 
	many lines : = begin
					.
					.
				 = end
	1 line : #
- Prints , Puts, Return, Yield
- Try to fix syntax error
- Research block code
A block consists of chunks of code.
You assign a name to a block.
The code in the block is always enclosed within braces ({}).
A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.
You invoke a block by using the yield statement.
Syntax: 
block_name{
   statement1
   statement2
   ..........
}
or
do |f|
.
.
end
example :
def block
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   
end
block {puts "You are in the block"}
===>Result
You are in the method
You are in the block
You are again back to the method
