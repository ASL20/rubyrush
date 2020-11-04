if File.exist?("#{File.dirname(__FILE__)}/data/holidays.txt")
	f = File.new("#{File.dirname(__FILE__)}/data/holidays.txt")
	file = f.readlines
	f.close
else
	puts "Файл не найден"
end


#Создаем переменную с текущим временем
time = Time.now
#создаем переменную с номером дня недели
time_week = time.wday

#если день недели равен 0 или 6 или день недели содержится в массиве
#праздничных дней, то выводим выходной, во всех остальных случаях
#выводим будний день
if time_week == 0 || time_week == 6|| file.include?(time.strftime("%d.%m\n"))
	puts "Сегодня выходной!"
	if file.include?(time.strftime("%d.%m\n"))
		puts "В связи с государственным праздничным днем!"
	end
else
	puts "Сегодня будний день, за работу!"
end