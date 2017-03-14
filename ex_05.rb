puts "Input number:"
n = gets.chomp.to_i
def check_fibonacci(num)
  num <= 1 ? num :  check_fibonacci( num - 1 ) + check_fibonacci( num - 2 )
end
def fibonacci(n)
	array_fibona = []
  for i in 1..n
    array_fibona.push(check_fibonacci(i))
  end
  puts "Fibonacci(#{n}) => #{array_fibona[n - 1]}" 
  array_fibona.each do |n|
  	puts n
  end
end


fibonacci(n)