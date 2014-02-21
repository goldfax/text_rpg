class Player
	def player_menu               #display character stats -- health, patt, matt, pdef, mdef -- also give options to save and exit the game
		puts "PLAYER STATS" + "          ITEMS"
		puts "-----------" + "---------" +"|SWORD   |"
		puts "|HEALTH   |" + "|600    |"
		puts "|PHYS ATTK|" + "|20     |"
		puts "|PHYS DEF |" + "|15     |"
		puts "|MAG ATT  |" + "|10     |"
		puts "|MAG DEF  |" + "|10     |"
		puts "-----------" + "---------"
		print "If you want to save type in <save>: "
		print "\nITEMS"
		save = gets.chomp
	end
end

newchar = Player.new
newchar.player_menu