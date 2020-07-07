require_relative 'man'

puts "У нас есть три человека"

man = Man.new("Гаврила", "Петрович")

man.return_name
p man.inspect

man_1 = Man.new("Фёдор", "Петрович")

man_1.return_name
p man_1.inspect

man_2 = Man.new("Василий", "Алибабаевич")

man_2.return_name
p man_2.inspect