class Pirate
# Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates.
	attr_accessor :name, :weight, :height
	PIRATES = []


	def initialize(args)
		@name = args[:name]
		@weight = args[:weight]
		@height = args[:height]
		PIRATES << self
	end

	def self.all
		PIRATES
	end



end