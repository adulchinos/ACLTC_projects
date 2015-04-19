class PagesController < ApplicationController
	def number_guess
		@guess = params[:message].to_i
		if @guess == 50
		 	@output = "Correct!" 
		else 
			@output = "No :(" 
		end
	end


	def number_guess2
		@guess = params[:message].to_i
		if @guess == 50
		 	@output = "Correct!" 
		 elsif @guess > 50
		 	@output = "Too high!!!"
		 elsif @guess < 50
		 	@output = "Too low :("
		end
		
	end

	def number_guess3 

	end

	def submit

		if cookies[:correct_guess]
		else
		cookies[:correct_guess] = rand(1..100)
		end
		@guess = params[:message].to_i


		if cookies[:number_of_guesses]
			cookies[:number_of_guesses] = cookies[:number_of_guesses].to_i + 1
		else
			cookies[:number_of_guesses] = 0
		end


		if @guess == cookies[:correct_guess].to_i
		 	@output = "Correct!" 
		 	cookies[:correct_guess] = rand(1..100)
		 	cookies[:number_of_guesses] = 0
		 elsif @guess > cookies[:correct_guess].to_i
		 	@output = "Too high!!!"
		 elsif @guess < cookies[:correct_guess].to_i
		 	@output = "Too low :("
		end

		flash[:success] = "You guessed #{@guess}"
		flash[:info] = @output
		flash[:danger] = "You have guessed #{cookies[:number_of_guesses]} times!!"
		redirect_to '/message-form'
	end
end
