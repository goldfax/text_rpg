class Shop
	attr_accessor :item, :name, :gold, :type
	def shop_menu
		puts "Welcome to #{@name}. How may I help you?" 
		puts "1. Buy\n2.Sell\n3.Conversation\n4.Exit"
		answer = gets.chomp
		if answer == 1     #show list of items able to buy -- items specific to shop instances -- only going to generalize for basic shops here.
			if self.type == "Weapon"
				puts "Here are the types of weapons we have to sell."   #mages are more powerful so they have less weapon types to get..... probably going to change this
				puts "1. Bronze Sword ------- 50 gp ------- Weakest sword there is.\n2. Iron Sword ------- 100 gp ------- Stronger than the bronze sword\n3. Steel Sword ------- 150 gp ------- Stronger than the iron sword\n4. Silver Sword ------- 200 gp ------- Strongest sword to buy in common shop\n5. Bronze Bow ------- 50 gp ------- Weakest bow, better than nothing though\n6. Iron Bow ------- 100 gp ------- Stronger than the bronze bow\n7. Steel Bow ------- 150 gp ------- Stronger than the Iron bow\n8. Silver Bow ------- 200 gp ------- Strongest bow to buy in a common shop.\n9. Book of Fire ------- 50 gp ------- A book for mages from which they can cast a fireball.\n10. Book of Ice ------- 50 gp ------- A book for mages from which they can cast a frost spell to damage the enemy."
			end
			elsif self.type == "Item"
				puts "Here are the types of items we have to sell." #only common healing items sold here (potions) / other functionality will be added sooner or later lol
				puts "1. Weak Potion ------- 20 gp ------- Heals you for 50 health\n2. Potion ------- 50 gp ------- Heals you for 100 health\n3. Great Potion ------- 80 gp ------- Heals you for 150 health\n4. Greater Potion ------- 110 gp ------- Heals you for 200 health"
      elsif self.type == "Armour" #only armour and trinkets sold here / armour only sold in sets / trinkets will be added later
        puts "Here are the types of items we have to sell." 
        puts "1. Bronze Armour set ------- 200 gp ------- The weakest protection, still better than nothing\n2. Iron armour set ------- 400 gp ------- Stronger than the bronze armour set\n3. Steel Armour set ------- 600 gp ------- Stronger then the Iron Armour set\n4. Silver Armour set ------- 800 gp ------- Strongest Armour set that you can buy in a common shop."
      end
		elsif answer == 2  #show list of items able to sell -- items in inventory (not quest items)
		elsif answer == 3  #print some generic conversation -- special conversations are specific to certain instances of the class
		elsif answer == 4
			puts "Thank you for your patronage!"
		end
	end
end