class Ship
# The ship class should have name, type, and booty attributes, as well as a class method 
# `.all` that returns all the ships and a class method `.clear` that deletes all ships.
	attr_accessor :name, :type, :booty

	@@ships = []

# !!!!!!!why does this error come up when @@ships is SHIPS?????

# An error occurred while loading spec_helper.
# Failure/Error: require_relative '../environment'

# SyntaxError:
#   /Users/DaNeil/Development/code/sinatra-nested-forms-seattle-web-051319/app/models/ship.rb:21: dynamic constant assignment
#   		SHIPS = []


	def initialize(args)
		@name = args[:name]
		@type = args[:type]
		@booty = args[:booty]
		@@ships << self
	end

	def self.all
		@@ships
	end

	def self.clear
		@@ships = []
	end


end