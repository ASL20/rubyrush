original_string = gets.chomp.strip.downcase

revert_string = original_string.reverse

if revert_string == original_string
	puts "Да, это палиндром"
else
	puts "Нет, это не палиндром"
end