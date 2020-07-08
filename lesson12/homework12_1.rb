puts "Врага какого персонажа вы хотите узнать?"

hero = STDIN.gets.chomp.downcase

case hero
when "batman", "бэтмен"
	puts "Джокер"
when "шерлок холмс", "sherlock holmes"
	puts "Профессор Мориарти"
when "буратино", "buratino"
	puts "Карабас-Барабас"
when "фродо бэггинс", "frodo baggins"
	puts "Саурон"
when "моцарт", "mozart"
	puts "Сальери"
else
	puts "не удалось найти врага :("
end
