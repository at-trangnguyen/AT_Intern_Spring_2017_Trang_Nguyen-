def number_perfect(n)
  is_perfect = false
  if n == 1
    is_perfect = false
  else
    sum = 0
    a = n/2
    for i in 1..a
      sum += i if n % i == 0
    end
    is_perfect = true if sum == n
  end
  puts "number_perfect? (#{n}): #{is_perfect}"
end

puts 'Input number:'
n = gets.chomp.to_i
number_perfect(n)