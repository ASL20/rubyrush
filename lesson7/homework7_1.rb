array = []
a = 0

puts "Введите N"

number = gets.to_i

while number >= 1 do
	array << number
	a += number
	number -= 1	
end

p array.reverse

puts "Сумма чисел: #{a}"