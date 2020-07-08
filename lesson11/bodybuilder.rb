class Bodybuilder

	def initialize(biceps = 0, triceps = 0, deltoid = 0)
		@biceps = biceps
		@triceps = triceps
		@deltoid = deltoid
	end

	def pump(muscle)
		case muscle
		when "biceps"
			@biceps += 1
		when "triceps"
			@triceps += 1
		when "deltoid"
			@deltoid += 1
		end
	end

	def condition
		puts "Бицепсы: #{@biceps}"
		puts "Трицепсы: #{@triceps}"
		puts "Дельтовидная: #{@deltoid}"
	end

end