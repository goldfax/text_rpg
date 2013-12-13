#require_relative 'item'
#require_relative 'map'
#require_relative 'monster'
require_relative 'player'
#require_relative 'shop'

def main_menu
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
		option = gets.chomp
		if option == 1
			puts "What would you like to change your character's name to?"
			newchar.name = gets.chomp   
		elsif option == 2 
			puts "What would you like to change your character's gender to?"
			newchar.gender = gets.chomp
		elsif option == 3
			puts "What would you like to change your character's role to?"
			newchar.role = gets.chomp
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

main_menu