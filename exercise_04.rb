def centuryFromYear(year)
	year%100 == 0 ? year/100 : year/100+1;
end


puts centuryFromYear(1905)
puts centuryFromYear(1700)
puts centuryFromYear(1701)
