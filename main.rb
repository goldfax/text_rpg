#require_relative 'item'
#require_relative 'map'
#require_relative 'monster'
require_relative 'player'
#require_relative 'shop'


def main
	bool = false
	while bool == false
	main_value = main_menu                                  
		case main_value 
		when 1                         
			new_character
			bool = true
		when 2
			load_saved_game
			bool = true
		when 3
			options_menu
			bool = true
		when 4
			puts "Thank you for trying the game :D"
			exit
		else
			puts "Please enter a correct choice (1, 2, 3, 4)."
			bool = false
		end
	end
end

def main_menu
	puts "Hi and welcome to the game of Mageia, where you can"
	puts "have all sorts of fun. Here are your options:"
	puts "1. New character"
	puts "2. Load previous save"
	puts "3. Options"
	puts "4. Exit"
	choice = gets.chomp.to_i
	return choice
end

def new_character
	puts "Hi and welcome to character creation, what would you like the name of your character to be?"
	charname = gets.chomp
	puts "What role would you like to be? (1. Mage, 2. Warrior, 3. Rogue)"
	charrole = gets.chomp.to_i
	puts "What would you like your gender to be? (<1> Male, <2> Female)"
	chargender = gets.chomp.to_i
	newchar = Player.new
	newchar.level = 1
	newchar.exp = 0
	newchar.name = charname
	newchar.role = charrole
	newchar.gender = chargender
	puts "This is the end of character creation I hope you enjoy playing the game :D"
end

def load_saved_game   #don't know how to do this quite yet, figure it out sometime, need yaml knowledge
	
end

def options_menu                      ####right now the options menu is pretty useless
	bool = true
	while bool == true
	puts "What would you like to do?"
	puts "1. Change character name"
	puts "2. Change character gender"
	puts "3. Change character role"
	puts "4. Exit to main menu"
	option = gets.chomp.to_i
		case option
		when 1
			change_character_name
			bool == false
		when 2
			change_character_gender
			bool == false
		when 3
			change_character_role
			bool == false
		when 4
			exit_to_main_menu
			bool == false
		else                                    
			puts "Please enter a correct choice. (1, 2, 3, 4)."       #check the response of the user
			bool == true
		end
	end
end

def change_character_name
	puts "What would you like to change your character's name to?"
	charname = gets.chomp
	newchar.name = charname
end

def change_character_gender
	puts "What would you like to change your character's gender to? (<1> Male, <2> Female)"
	chargender = gets.chomp.to_i
	newchar.gender = chargender
end

def change_character_role
	puts "What would you like to change your character's role to? (<1> Mage, <2> Rogue Mage, <3> Warrior Mage)"
	charrole = gets.chomp.to_i
	newchar.role = charrole
end

def exit_to_main_menu
	main_menu
end

main
