puts "Загадано число от 0 до 15, отгадайте какое?"

number = rand(16)

guess = gets.to_i

if guess == number
	abort "Ура, вы выиграли!"
else
	if (guess - number).abs >= 3
		puts "Холодно"
	else
		if ((guess - number).abs <= 2) and (guess < number)
			puts "Тепло (нужно больше)"
		else
			if ((guess - number).abs <= 2) and (guess > number)
					puts "Тепло (нужно меньше)"
			end
		end
	end
end

guess = gets.to_i

if guess == number
	abort "Ура, вы выиграли!"
else
	if (guess - number).abs >= 3
		puts "Холодно"
	else
		if ((guess - number).abs <= 2) and (guess < number)
			puts "Тепло (нужно больше)"
		else
			if ((guess - number).abs <= 2) and (guess > number)
					puts "Тепло (нужно меньше)"
			end
		end
	end
end

guess = gets.to_i

if guess == number
	abort "Ура, вы выиграли!"
else
	if (guess - number).abs >= 3
		puts "Холодно"
	else
		if ((guess - number).abs <= 2) and (guess < number)
			puts "Тепло (нужно больше)"
		else
			if ((guess - number).abs <= 2) and (guess > number)
					puts "Тепло (нужно меньше)"
			end
		end
	end
end

puts "Попытки исчерпаны"