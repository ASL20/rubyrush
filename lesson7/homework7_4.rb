original = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив:"
puts original.to_s
reverse = []
while original.size > 0 do
	reverse.unshift(original.shift)

end
puts "Новый массив полученный из исходного:"
puts reverse.to_s
