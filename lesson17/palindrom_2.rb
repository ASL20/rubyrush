original_string = gets.chomp.delete(" ,").downcase

revert_string = original_string.reverse

if revert_string == original_string
	puts "Да, это палиндром"
else
	puts "Нет, это не палиндром"
end