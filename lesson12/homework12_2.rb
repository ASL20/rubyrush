require_relative 'film'

movie_list = []

puts "Фильмы какого режиссёра вы хотите посмотреть?"
		
director = STDIN.gets.chomp

3.times do
	puts "Какой-нибудь его хороший фильм?"

	film_name = STDIN.gets.chomp

	movie_list << Film.new(film_name, director)
end

puts "\nИ сегодня вечером рекомендую посмотреть: #{movie_list.sample.film_name}
Режиссер: #{director}"