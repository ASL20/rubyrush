require 'translit'

puts "Введите фразу для транслитерации:"

input = STDIN.gets.chomp

puts Translit.convert(input)

puts "Введите фразу для обратной транслитерации:"

input = STDIN.gets.chomp

puts "Транслит: #{Translit.convert(input)}"