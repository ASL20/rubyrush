puts "Введите email:"

email = STDIN.gets.chomp

if email =~ /^[\w\d+.\-]+@[\w\d]+\.[\w\d]*\.[\w]+$/i
	puts "Спасибо!"
else
	puts "Фигня какая-то!"
end