class Player
	attr_accessor :level, :exp, :name, :gender, :role, :gold               #there may be some gender specific actions that one can take
	@@id = 1
	def level_up
		if @exp >= 100
			@level += 1
		end
	end
=begin
	def fight
		if adj_monst
		else
		end
	end

	def adj_monst                 #to check if a monster is adjacent when the player is in a field
		if          
			true                  #finish this after I have the map class finished
		else
			false
		end
	end

	def position
	end
=end
	def death
		if @health == 0
			puts "GAME OVER"
			exit     #the game will exit without saving -- will change to restarting at last checkpoint
		end
	end

	def inventory
	end

	def earn_gold earnedgold
		@gold += earnedgold
	end

	def lose_gold lostgold
		@gold -= lostgold
	end

	def stats         # 1 is mage, 2 is warrior, 3 is rogue
		if @role == 1
			@p_att = 10
			@m_att = 20
			@p_def = 10
			@m_def = 2
			@health = 500
		elsif @role == 2
			@p_att = 20             #stats --- nothing really concrete just made up numbers, maybe should store the stats in a hash
			@m_att = 10
			@m_def = 10
			@p_def = 2
			@health = 500
		elsif @role == 3
			@p_att = 15
			@m_att = 15
			@m_def = 6
			@p_def = 6
			@health = 500
		end
	end

	#def player_menu               #display character stats -- health, patt, matt, pdef, mdef -- also give options to save and exit the game
	#end

	#def change_maps           #need a method for the character to move to different maps - preferably when the character is on the edge of on map
	#end

	#def which_map
		#return map.name
	#end
end