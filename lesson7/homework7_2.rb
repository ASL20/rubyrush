array = []
puts "Какой длины будет массив случайных чисел?"
number = gets.to_i

while array.length < number do
	array << rand(101)
end

puts array.to_s, "Самое большое число:\n#{array.max}"