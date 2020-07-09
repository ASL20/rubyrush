current_path = "./#{File.dirname(__FILE__)}/data/films.txt"

if File.exist?(current_path)
	f = File.new(current_path, 'r')
	lines = f.readlines
	f.close
else
	puts "Файл не найден"
end

randomizer = rand(lines.size)

unless randomizer % 2 == 0
	randomizer -= 1
end

puts "#{lines[randomizer]}#{lines[randomizer + 1 ]}"







