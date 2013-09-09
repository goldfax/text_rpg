class Map
	attr_accessor :region, :name   #map name, and region accessor methods added auto
	def initialize width height
		@width = width
		@height = height
		@map = [@height][@width]  #initialize an array with the given height and width parameters
	end
end
