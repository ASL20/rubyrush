class Man
	def initialize(first_name, patron_name, age)
		@first_name = first_name
		@patron_name = patron_name
		@age = age
	end
	def return_name
		if @age > 60
			puts "Это #{@first_name} #{@patron_name}"
		else 
			puts "Это #{@first_name}"
		end
	end
	def old
		if @age > 60
			puts "Ему #{@age}, он пожилой"
		else
			puts "Ему #{@age}, он молодой"
		end
	end
end
