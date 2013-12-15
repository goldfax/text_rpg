#require_relative 'item'
#require_relative 'map'
#require_relative 'monster'
require_relative 'player'
#require_relative 'shop'


def main
	main_menu
	bool = true
	while bool == true
		if main_menu == 1
			new_character
		elsif main_menu == 2
			load_saved_game
		elsif main_menu == 3
			options_menu
		elsif main_menu == 4
			exit
		else
			puts "Please enter a correct choice (1, 2, 3, 4)."
		end
		bool = false
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
	newchar.gender = gender
	puts "This is the end of character creation I hope you enjoy playing the game :D"
end

def load_saved_game   #don't know how to do this quite yet, figure it out sometime
end

def options_menu
	bool = true
	puts "What would you like to do?"
	puts "1. Change character name"
	puts "2. Change character gender"
	puts "3. Change character role"
	puts "5. Exit to main menu"
	option = gets.chomp.to_i
	while bool == true
		if option == 1
			change_character_name
		elsif option == 2
			change_character_gender
		elsif option == 3
			change_character_role
		elsif option == 4
			exit_to_main_menu
		else
			puts "Please enter a correct choice. (1, 2, 3, 4)."
		end
		bool = false
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

=begin
	if choice == 1  # if choice is (1) then create character with name, role, gender
		puts "What would you like your name to be?"
		charname = gets.chomp
		puts "What would you like your role to be? (1. Mage, 2. Warrior, 3. Rogue)?"  #for now will have people type in the string
		charrole = gets.chomp
		puts "What would you like your gender to be? (Male, Female)?"  #for now will have people type in the string
		chargender = gets.chomp
		newchar = Player.new
		newchar.level = 1
		newchar.exp = 0
		newchar.name = charname
		newchar.role = charrole
		newchar.gender = chargender
		puts "Your character's name is #{newchar.name},\nyour character's role is #{newchar.role},\nyour character's gender is #{newchar.gender}"
	elsif choice == 2    #if the choice is two then load up the saved data of a character
		print "Enter desired name for save file: "
		filename = gets.chomp
		save(filename)
	elsif choice == 3    #if the choice is three then give an options menu -- add music, graphics?
		puts "What would you like to do?"
		puts "1. Change character name"
		puts "2. Change character gender"
		puts "3. Change character class"
		puts "4. Change character age"
		puts "5. Exit to main menu"
		option = gets.chomp.to_i
		if option == 1
			puts "What would you like to change your character's name to?"
			newchar.name = gets.chomp   
		elsif option == 2 
			puts "What would you like to change your character's gender to?"
			newchar.gender = gets.chomp
		elsif option == 3
			puts "What would you like to change your character's role to?"
			newchar.role = gets.chomp
		elsif option == 4
			puts "What would you like to change your character age to?"
			newchar.age == gets.chomp.to_i
		elsif option == 5
			main_menu
		else
			puts "Please enter a correct option."
		end
	elsif choice == 4    #exit the program with the message goodbye
		puts "Goodbye"
		exit
	else
		puts "You did not choose the correct option please try again."
		main_menu
	end
end



def save(file)
	File.open("#{file}.txt", 'w') { |file| file.write("This is a saved game.") }
end
=end

