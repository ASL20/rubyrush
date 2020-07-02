cars = ["Citroen", "Peugeot", "Renault", "Mitsubishi", "Honda", "Toyota", "Subaru", "Nissan"]
puts "У нас всего #{cars.count} машин. Вам какую?"
number = gets.to_i

if (number - 1) < cars.length and (number - 1) >= 0
	puts "Поздравляем, вы получили #{cars[number - 1]}"
else
	puts "Извините, машины с таким номером у нас нет :("
end