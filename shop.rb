class Shop
	attr_accessor :item, :name, :gold, :type
	def shop_menu
		puts "Welcome to #{@name}. How may I help you?" 
		puts "1. Buy\n2.Sell\n3.Conversation\n4.Exit"
		answer = gets.chomp
		if answer == 1     #show list of items able to buy -- items specific to shop instances
		elsif answer == 2  #show list of items able to sell -- items in inventory (not quest items)
		elsif answer == 3  #print some generic conversation -- special conversations are specific to certain instances of the class
		elsif answer == 4
			puts "Thank you for your patronage!"
		end
	end

end