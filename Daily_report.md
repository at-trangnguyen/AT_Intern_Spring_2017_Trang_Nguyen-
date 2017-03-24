**********Daily Report************

1. Inheritance in class :

- Inheritance mean define classes base on existing classes.

- Inheritance classes inherit elements, methods of parent classes. They can have their own components.

Ex: 

class A

  def initialize

    puts "My name is Trang"

  end

end


class C < A

end


puts C.new 


=> My name is Trang

- In ruby not have multi inheritance but Module can perform that task.

2. Module : is used as a namespace of class.

- Creat a module: 

module A

	def greeting

		puts "Hello worlds"

  end

end

- multi inheritances: 

class A

  def initialize

    puts "My name is Trang"

  end

end


module B

  def greeting

    puts "Hello worlds"

  end

end


class C < A

  extend B

end

puts C.greeting


=> Hello worlds

- Use include keyword to add a instance method.

- Use extend keyword to add a class method.

Ex:

module A 

  def greetting

    puts "Hello everybody"

  end

end

class B

  include A

end

b = B.new

puts b.greetting => "Hello everybody"

<!-- puts B.greeting => NoMethodError -->

class B 

  extend A

end

puts B.greetting => "Hello everybody"

<!-- put B.new.greetting => NoMethodError -->

3. Introduce Sinatra: 

- Sinatra is  a DSL(Domain-specific language) for quickly creating  web applications  in  Ruby

* Routes: 

- get '/' do <!-- ..  show  something .. -->

  end

- post  '/' do    <!-- ..  create  something .. -->
       
 end

- put '/' do  <!-- ..  replace something .. -->
    
  end

- patch '/' do  <!-- ..  modify  something .. -->
    
  end

- delete  '/' do  <!-- ..  annihilate  something .. -->
    
  end

- options '/' do  <!-- ..  appease something .. -->
    
  end

- link  '/' do  <!-- ..  affiliate something .. -->
    
  end
  
- unlink  '/' do  <!-- ..  separate  something .. -->
    
  end
