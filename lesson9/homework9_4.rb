def guess_number(guess, number)
	if guess == number
		puts "Поздравляем. Вы угадали число"
		exit
	else
		if ((guess - number).abs >= 3) 
			puts "Холодно"
		else
			puts "Тепло"
		end

		if guess < number
			puts "нужно больше"
		else
			puts "нужно меньше"
		end
	end
end

random = rand(17)

counter = 0

puts "Загадано число от 0 до 16. Введите свое:"

while counter < 3 do
	
	your_number = gets.to_i

	puts guess_number(your_number, random)

	counter += 1
end

puts "Загаданное число: #{random}"
