class Film

	attr_reader :film_name, :director

	def initialize(film_name, director)
		@film_name = film_name
		@director = director
	end

end