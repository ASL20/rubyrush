require_relative 'film'
require_relative 'man'

		
# 3.times do
# 	puts "Какой-нибудь его хороший фильм?"

# 	film_name = STDIN.gets.chomp

# 	film =  Film.new(film_name, director)
# end
jaws = Film.new("Челюсти", "Стивен Спилберг",)
schindlers_list = Film.new("Список Шиндлера", "Стивен Спилберг",)
jurassic_park = Film.new("Парк Юрского периода", "Стивен Спилберг")

john = Man.new("Джон")
marina = Man.new("Марина")
james = Man.new("Джеймс")

john.write_film(jaws)
marina.write_film(schindlers_list)
james.write_film(jurassic_park)

puts "#{john.name} с любимым фильмом: #{john.lovely_film.film_name}"
puts "#{marina.name} с любимым фильмом: #{marina.lovely_film.film_name}"
puts "#{james.name} с любимым фильмом: #{james.lovely_film.film_name}"