temperature = ARGV[0]
season = ARGV[1]


while temperature == nil do
	# if temperature != nil
	# 	temperature.to_i
	# 	break
	# end
	puts "Какая сейчас температура?"
	
	temperature = STDIN.gets.to_i

end

while season == nil do
	# if season != nil
	# 	season.to_i
	# 	break
	# end
	puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
	season = STDIN.gets.to_i
end

if (temperature.to_i > 21 and temperature.to_i < 31 and season.to_i != 1) or (temperature.to_i > 14 and temperature.to_i < 36 and season.to_i == 1)
	puts "Соловьи поют"
else
	puts "Соловьи молчат, греются или прохлаждаются"
end	