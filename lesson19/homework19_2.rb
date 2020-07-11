puts "Введите первое число:"
first_number = STDIN.gets.to_f

puts "Введите второе число:"
second_number = STDIN.gets.to_f

puts "Выберите операцию (+ - * /)"
operation = STDIN.gets.chomp

puts "Результат: "
	
case operation
when "+"
	puts first_number + second_number
when "-"
	puts first_number - second_number
when "*"
	puts first_number * second_number
when "/"
	puts first_number / second_number
else
	puts "Неправильная операция!"
	exit
end	

