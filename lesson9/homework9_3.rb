def put_stars(number)
	puts "*" * number
end

puts "Сколько вам звезд на погоны?"
star = gets.to_i
puts "Вот ваши звезды :)"
put_stars(star)
 