if File.exist?('./data/quotes.txt')


	f = File.new('./data/quotes.txt')

	content = f.read

	puts content

else
	puts 'Файл не найден'
end