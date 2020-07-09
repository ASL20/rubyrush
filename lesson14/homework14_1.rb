current_path = "./#{File.dirname(__FILE__)}/data/films.txt"

if File.exist?(current_path)
	f = File.new(current_path, 'r')
	lines = f.readlines
	f.close
	film = lines.sample.chomp
else
	puts "Файл не найден"
end


puts "Сегодня Вам предлагается к просмотру фильм:"
puts film