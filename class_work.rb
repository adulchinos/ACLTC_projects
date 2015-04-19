class Jewel

	def initialize(name, curse)#, value)
		@name = name
		@curse = curse
		#@value = value
	end

	def sparkle
 		puts "* ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ *"
 		puts @curse
	end

	# def value
	# 	puts "Estimated at $#{@value}"
	# 	sparkle
	# end

	# def museum
	# 	puts "Valued at $#{@value}, the #{@name} is kept in this museum."
	# 	sparkle 
	# end

	# def appraise #puts names of all stones, if theres a premade hash map
	# end
end

# hope_diamond = Jewel.new("Hope Diamond", "ur face burns off and u die srry", 12000000)
# moonstone = Jewel.new("Moonstone","u fling urself in2 the ocean 2 save the 1 u <3", 40000000)
# hope_diamond.sparkle
# hope_diamond.value
# moonstone.museum

command = "Y"
while command == "Y"

	puts "^_^ Welcome to the black market!! ^_^"
	puts "What are you interested in?"
	puts "Name?"
	name_of_stone = gets.chomp
	puts "Any curses we should know about?"
	curse_of_stone = gets.chomp
	puts "Great!"
	nu_stone = Jewel.new(name_of_stone, curse_of_stone)
	nu_stone.sparkle
	puts "Would you like something else? Y/N?"
	command = gets.chomp
end



#ultimate form might be a kawaii black market for famous cursed jewels, that you could purchase or sell on. 
#you'd have your own amt of money, and if you get a curse the comp would run `say AHHHHHHHHHH` or the like