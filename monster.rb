class Monster
	attr_accessor :level, :exp, :name

	def stats         # 1 is mage, 2 is warrior, 3 is rogue (integer value for the @role variable)
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

	def spawn          #determines how and where the monsters will spawn
		Monster.new
	end
end