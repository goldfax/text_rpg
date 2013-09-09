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
	#elsif choice == 2    #if the choice is two then load up the saved data of a character
	#elsif choice == 3    #if the choice is three then give an options menu -- add music, graphics?
	elsif choice == 4    #exit the program with the message goodbye
		puts "Goodbye"
		exit
	end
end


main_menu