class Map
	attr_accessor :name   #map name accessor methods auto added
	def initialize width height
		@width = width
		@height = height
		@map = Array.new(width, Array.new(height)) #when entering in values for the size of the map make it into a square
	end
end
