puts "Введите первое число:"
first_number = STDIN.gets.to_i

puts "Введите второе число:"
second_number = STDIN.gets.to_i

puts "Выберите операцию (+ - * /)"
operation = STDIN.gets.chomp

begin

	case operation
		when "+"
			result = first_number + second_number
		when "-"
			result = first_number - second_number
		when "*"
			result = first_number * second_number
		when "/"
			result = first_number / second_number
	else
		puts "Неправильная операция!"
		exit
	end	

rescue ZeroDivisionError

	result = "На ноль делить нельзя!" 

end

puts "Результат: #{result}"


