current_path = File.dirname(__FILE__)

if File.exist?("#{current_path}/data/words.txt")
	f = File.new("#{current_path}/data/words.txt", "r")
	file = f.read
	f.close
else
	puts "Файл не найден"
end

file = file.gsub(/[.,]/, '')

regexp = /\s[\wа-яА-Я]{3}\s/

puts "В данном файле слов из 3 букв: #{file.scan(regexp).size}"


