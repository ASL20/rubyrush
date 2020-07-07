#метод получает загаданное слово и возвращает его 
#массивом из отдельных букв
def get_letters 
	slovo = ARGV[0]#Получает загаданное слово

	if slovo == nil || slovo == ""
		abort "Вы не ввели слово для игры"
	end

	return slovo.split("")#возвращает массив из букв
end

#метод для ввода букв
def get_user_input#получает пользовательский ввод
	letter = "" #задаем пустую переменную
	#пока переменная пустая, выводим строку для ввода
	while letter == "" do 
		letter = STDIN.gets.chomp
	end

	#после ввода метод возвращает букву
	return letter
end

#метод проверяет роезультат ввода поль0зователя

def check_result(user_input, letters, good_letters, bad_letters)
	#если буква пользователя является правильной или неправильной
	#продолжаем игру
	if good_letters.include?(user_input) || bad_letters.include?(user_input)
		return 0
	end
	#если введенная буква яляется элементом слова, то добавляем
	#ее в массив правильных букв
	if letters.include?("ё") && letters.include?("е") && (user_input == "е")
		good_letters << user_input
		user_input = "ё"
	elsif letters.include?("ё") && letters.include?("е") && (user_input == "ё")
		good_letters << user_input
		user_input = "е"
	elsif letters.include?("и") && letters.include?("й") && (user_input == "и")
		good_letters << user_input
		user_input = "й"
	elsif letters.include?("и") && letters.include?("й") && (user_input == "й")
		good_letters << user_input
		user_input = "и"
	elsif letters.include?("ё") && (user_input == "е")
		user_input = "ё"
	elsif letters.include?("е") && (user_input == "ё")
		user_input = "е"
	elsif letters.include?("й") && (user_input == "и")
		user_input = "й"	
	elsif letters.include?("и") && (user_input == "й")
		user_input = "и"
	end

	if letters.include?(user_input)
	good_letters << user_input

		# условие когда отгадано всё слово!
		if letters.uniq.size == good_letters.size
			return 1
		else
			return 0
		end
	#иначе, добавляем ее в массив неправильных букв и увеличиваем
	#счетчик ошибок
	else
		bad_letters << user_input
		return -1
	end
end

def get_word_for_print(letters, good_letters)
	result = ""

	for letter in letters do
		if good_letters.include? letter
			p good_letters
			result += letter + " "
		else
			result += "_ "
		end
	end

	return result
		
end


#1. выводить загаданное слово (как в поле чудес) +
#2. информацию об ошибках и названные буквы +
#3. ошибок > 7 - сообщить о поражении +
#4. слово угадано - сообщить о победе +
def print_status(letters, good_letters, bad_letters, errors)
	puts "\nСлово: #{get_word_for_print(letters, good_letters)}"

	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

	if errors >= 7
		puts "Вы проиграли :("
	else
		if letters.uniq.size == good_letters.size
			puts "Поздравляем! Вы выиграли!\n\n"
		else
			puts "У Вас осталось попыток: #{(7 - errors).to_s}"
		end
	end
end

def cls
	system "clear"
end