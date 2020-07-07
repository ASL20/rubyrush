require_relative 'man'

puts "У нас есть три человека:"

man = Man.new("Гаврила", "Петрович", 72)
man_1 = Man.new("Фёдор", "Петрович", 18)
man_2 = Man.new("Василий", "Алибабаевич", 46)

man.return_name
man.old
man_1.return_name
man_1.old
man_2.return_name
man_2.old
