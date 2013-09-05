class Player
	attr_accessor :level, :exp, :name, :gender, :role, :gold
	
	def level_up
		if @exp >= 100
			@level += 1
		end
	end

	def death
		if @health == 0
			puts "GAME OVER"
			exit
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

	def stats         // 1 is mage, 2 is warrior, 3 is rogue
		if @role == 1
			@p_att = 10
			@m_att = 20
			@p_def = 10
			@m_def = 2
			@health = 500
		elsif @role == 2
			@p_att = 20
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
end