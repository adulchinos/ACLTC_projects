class RecipesController < ApplicationController
	def home
		@recipe = Recipe.find(rand(1..4))
	end
end
