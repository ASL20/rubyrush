puts "Какая у вас на руках валюта?
  1. Рубли
  2. Доллары"

currency = gets

if currency == "2"
	puts "Сколько сейчас стоит 1 доллар?"
course =  gets.to_f
	puts "Сколько у вас долларов?"
sum = gets.to_f
	puts "Ваши запасы на сегодня равны: #{(sum * course).to_i} руб."
else
	puts "Сколько сейчас стоит 1 рубль?"
course =  gets.to_f
	puts "Сколько у вас рублей?"
sum = gets.to_f
	puts "Ваши запасы на сегодня равны: #{(sum * course).to_i} дол."
end