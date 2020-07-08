require_relative 'bodybuilder'

rony = Bodybuilder.new
phil = Bodybuilder.new
kai = Bodybuilder.new

7.times do
	rony.pump("biceps")
end

9.times do
	rony.pump("triceps")
end

8.times do
	rony.pump("deltoid")
end

10.times do
	phil.pump("biceps")
end

8.times do
	phil.pump("triceps")
end

9.times do
	phil.pump("deltoid")
end

8.times do
	kai.pump("biceps")
end

7.times do
	kai.pump("triceps")
end

10.times do
	kai.pump("deltoid")
end

puts "Первый бодибилдер"

rony.condition

puts "Второй бодибилдер"

phil.condition

puts "Третий бодибилдер"

kai.condition