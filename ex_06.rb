puts "Input number: "
n = gets.chomp.to_i
def prime_number(n)
  prime_number = true
  if n == 1 
  	prime_number = true
  else
    a = Math.sqrt(n)
    for i in 2..a
      if n % i == 0
        prime_number = false
      end
    end
  end
  puts "prime_number? (#{n}) :#{prime_number}"
end
prime_number(n)