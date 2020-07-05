def cut_arr(cut, array)
	array.take(cut).to_s
end

default_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts "Вот какая палка колбасы у нас есть:"
puts default_array.to_s
puts "Сколько первых элементов Вам отрезать?"
cut = gets.to_i
puts "Вот Ваша колбаса:"
puts cut_arr(cut, default_array)