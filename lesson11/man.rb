class Man
	def initialize(first_name, patron_name)
		@first_name = first_name
		@patron_name = patron_name
	end
	def return_name
		puts "#{@first_name} #{@patron_name}"
	end
end
