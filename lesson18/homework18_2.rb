puts "Введите строку с хэштегами:"

user_input = STDIN.gets.chomp

hashtag_regexp = /#[а-яА-Я_]+/

input = user_input.scan(hashtag_regexp)

puts "Нашли такие хэштеги: #{input.join(", ")}"

