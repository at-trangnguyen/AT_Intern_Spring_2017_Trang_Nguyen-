require 'pry'	
=begin
	
rescue Exception => e
	
end$global_varialble = 10
class Class1
	def print_global
		puts "Global variable in Class1 is #$global_varialble"
	end
end
class Class2
	def print_global
		puts "Global variable in Class2 is #$global_varialble"
	end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
=end
class Customer
	@@no_of_customers=0
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
		@@no_of_customers +=1
	end
	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer addr #@cust_addr"
	end
	def total_no_of_customers()
		puts "Total number of customers: #@@no_of_customers"
	end
end

cust1=Customer.new("1","John","add")
Binding.pry
cust2=Customer.new("2","A","addr")
cust1.total_no_of_customers()
cust2.total_no_of_customers()

