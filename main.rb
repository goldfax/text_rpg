class Item
	attr_accessor :stats, :use, :description
end

class Monster
	attr_accessor :level, :exp, :name, :role

	def stats         # 1 is mage, 2 is warrior, 3 is rogue (integer value for the @role variable)
		if @role == 1
			@p_att = 10
			@m_att = 20
			@p_def = 10
			@m_def = 2
		elsif @role == 2
			@p_att = 20
			@m_att = 10
			@m_def = 10
			@p_def = 2
		elsif @role == 3
			@p_att = 15
			@m_att = 15
			@m_def = 6
			@p_def = 6
		end
	end
end

def menu
	puts "Hi and welcome to the game of Mageia, where you can"
	puts "have all sorts of fun. Here are your options:"
	puts "1. New character"
	puts "2. Continue previous save"
	puts "3. Options"
	puts "4. Exit"
	choice = gets.chomp.to_i
	if choice == 1  # if choice is (1) then create character with name, role, gender
		puts "What would you like your name to be?"
		charname = gets.chomp
		puts "What would you like your role to be? (1. Mage, 2. Warrior, 3. Rogue)?"
		charrole = gets.chomp.to_i
		puts "What would you like your gender to be? (1.Male, 2.Female)?"
		chargender = gets.chomp.to_i
		newchar = Player.new
		newchar.level = 1
		newchar.exp = 0
		newchar.name = charname
		newchar.role = charrole
		newchar.gender = chargender
		puts "Your character's name is #{newchar.get_name},\nyour character's role is #{newchar.get_role},\nyour character's gender is #{newchar.get_gender}"
	#elsif choice == 2    #if the choice is two then load up the saved data of a character
	#elsif choice == 3    #if the choice is three then give an options menu -- add music, graphics?
	#elsif choice == 4    #exit the program with the message goodbye
		puts "Goodbye"
		exit
	end
end


menu