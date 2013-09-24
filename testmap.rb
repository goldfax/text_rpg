class Player
  attr_accessor :name
end

class Map
   attr_accessor :name
   def initialize height, width
     @height = height
     @width = width
     @map = Array.new(@height, 0) {Array.new(@width, 0)}
   end
   
   def set_player_position
     player = Player.new
     player.name = 'Goldfax'
     @map[0][0] = player
   end
   def get_player_position
     @map.each do |x , y|
       if @map[x][y] != 0
         @map[x][y]
       end
     end
   end
end
  
map = Map.new 4, 6

