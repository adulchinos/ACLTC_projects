class PagesController < ApplicationController
	


	def fortune
		fortune = rand(1...10)
			if fortune == 1
				@fortune = "one" #replace with real fortunes
			elsif fortune == 2
				@fortune = "two"
			elsif fortune == 3
				@fortune = "three"
			elsif fortune == 4
				@fortune = "four"
			elsif fortune == 5
				@fortune = "five"
			else
				@fortune = "Ask again later"
			end

	end


	def lottery
		@lottery = []
		6.times do |number|
			number = rand(1...20)
			@lottery << number
		end
	end

	

	# def beer	

	# 	beer_lyrics = "#{} bottle of beer on the wall, #{} bottle of beer! Take one down, pass it around, #{ } bottle of beer on the wall!"
	# 	99.times do ||

	# 	end 

	# end



	# def user_views
	# 	@title = "HOME!!!!"
		
	# 	@user_views = 0
	# 	if 
	# 	end
			
	# 	end

	# end


end
