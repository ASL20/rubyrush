#Создаем массив с мужскими именами
mens = ["Gena", "George", "Misha"]
#Создаем массив с женскими именами
womens = ["Katrin", "Liza", "Masha"]

#Выводим на экран отдельные массивы и объединенный
puts "Мужчины \n #{mens}"
puts "Женщины \n #{womens}"
puts "Все вместе \n #{(all = mens + womens).to_s}"
