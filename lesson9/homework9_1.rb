def area(radius)
	# (radius**2)*3.1415
	3.14159 * radius *radius
end

puts "Введите радиус круга"

radius = gets.to_f

puts "Площадь круга: #{area(radius)}"

puts "Введите радиус второго круга"

radius = gets.to_f

puts "Площадь второго круга: #{area(radius)}"
