class Man

	def initialize(name, lovely_film = nil)
		@name = name
		@lovely_film = lovely_film
	end

	def write_film(film)
		@lovely_film = film
	end

	attr_reader :lovely_film, :name
end
