path = "/#{ARGV[0]}"

current_path = File.dirname(__FILE__)

file_path = current_path + path

if File.exist?(file_path)
	file = File.new(file_path).readlines
else
	puts 'Файл не найден'
end

file = file.map { |x| x.chomp }
empty_file = []

puts "Открыли файл: #{ARGV[0]}"
puts "Всего строк: #{file.size}"

file.each_with_index do |name, index|
	if name == ""
		empty_file << name
	end
end

puts "Пустых строк: #{empty_file.size}" 
puts "Последние 5 строк файла:"
file_5 = file.reverse.first(5)
puts file_5

