I. CONTROL FLOW

1. IF STATEMENTS

-Syntax :

		if condition

			statements

		end

	==> if condition is true, run statements, if it false, move onto the next
piece of instructions.

ex:

if a > 0

	puts "A is positive"

end

or write inline

statement if condition

ex: puts "A is positive" if a > 0

2. IF/ELSE STATEMENTS

- Syntax: 

		if condition

			code block

		else

			code block

		end

	==> if condition is true, run this code block, if it is false run the code block after else.

ex:

	if a > 0

		puts "a is positive"

	else puts "a is negative"

	end

We can write inline: Condition ? true statement : false statement

3. ELSIF STATEMENTS:

- To test the right and wrong of many conditions at the same time we use elsif

ex:

	if gioitinh == "nam"

    	puts 'Ban la nam'

	elsif gioitinh == "nu"

    	puts 'Ban la nu'

	else

    	puts 'Ban la Buedue !'
	end

4. UNLESS STATEMENTS:

- Syntax: 

	unless conditional 

   		code block

	else

   		code block

	end

	==> if the conditional is false, run the code block. if it is true, run the code block after else.

Ex: 

	unless a < 0

		puts "a la so duong"

	else 

		puts "a la so am"

	end

5. SWITCH STATEMENTS:

	When you have multiple options, you	can	use	the	switch statement. It allows	you	to put multiple	when statements, or	conditions,	and	then which ever	one	is true, it	will run that condition.

Ex:

	case grade

	when 1..5

		puts "Tieu hoc"

	when 6..9

		puts "THCS"

	when 10..12

		puts "THPT"
	end

II. LOOPS

1. FOR

- Syntax :

	for variable in expression

		code 

	end

Ex: 
	arr = [Trang, Diep, Oanh]

	for item in arr

		puts item

	end

2. WHILE

- Syntax :

	while conditional [do]

   		code

	end

Ex: 

	i = 0

	while i < 3

        puts i

        i += 1

	end

3. UNTIL

-Syntax: 

	until condition

		code

	end

Ex: 

	i =	1
	until i	> 50
		puts "#{i}"
		i += 1
	end

4.LOOP

Ex: 

	i=1

	loop do

		puts "#{i}"

		i += 1

		break if i > 50

	end


5. .times

Ex:

	4.times do

    	puts "a"

	end

*Bingding.pry help you debug easily

III. Variables:

1. Globle variable: $snake_case

2. Instance variable: @snake_case

3. Class variable: @@snake_case

4. Local variable: snake_case

5. Constant : AAA_BBB