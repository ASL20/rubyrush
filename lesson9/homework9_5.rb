def sklonenie(number, krokodil, krokodila, krokodilov)
	if number == nil || !number.is_a?(Numeric)
		number = 0
	end

	ostatok = number % 10

	# if number == 11 || number == 12 || number == 13 || number == 14
	# 	return krokodilov
	# end

	if ostatok > 4 || ostatok == 0 || (number >= 11 && number <= 14)
		return krokodilov
	end

	if (number == 1 || ostatok == 1)
		return krokodil
	end

	if (ostatok >= 2 && ostatok <= 4)
		return krokodila
	end

	
end

skolko = ARGV[0].to_i

puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} #{sklonenie(skolko, "пошёл", "пошли", "пошли")} купаться в море!"
