require_relative 'paris'
require_relative 'london'
require_relative 'rome'

puts "Сегодня прекрасный день для экскурсии. Выберите город," + 
	"в который хотите отправиться"
puts "1. Лондон\n" +
"2. Париж\n" +
"3. Рим\n" +
"4. Остаться дома"

user_input = gets.to_i

if user_input == 1
	visit_london
elsif user_input == 2
	visit_paris
elsif user_input == 3
	visit_rome
else
	abort "Несмотря на прекрасную возможность посетить один из" +
	"вышеуказанных городов, Вы решили остаться сегодня дома"
end
