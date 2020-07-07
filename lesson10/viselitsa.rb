require_relative "methods" #подключаем методы

cls #после ввода слова, очищаем экран

puts "игра виселица, версия 1"

letters = get_letters #записываем в переменную загаданное слово

errors = 0 #счетчик ошибок

bad_letters = [] #массив неправильных букв
good_letters = [] #массив правильных букв

#пока ошибок меньше 7, выводим статус игры и запрос
#на следующую букву

while errors < 7 do 
	print_status(letters, good_letters, bad_letters, errors) #todo

	puts "Введите следующую букву"
	#сохраняем в переменную ввод буквы пользователем
	user_input = get_user_input 
	#результат угадывания слова, если буква неверная, пополняем
	#пополняем счетчик ошибок, если буква правильная, запускаем
	#цикл по новой, если слово угадано, выходим из цикла
	result = check_result(user_input, letters, good_letters, bad_letters)

	if result == -1
		errors += 1
	elsif result == 1
		break
	end
end

#Выводим итоговый статус игры
print_status(letters, good_letters, bad_letters, errors)