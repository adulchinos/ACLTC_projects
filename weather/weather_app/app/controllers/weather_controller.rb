class WeatherController < ApplicationController
	def index
		@weather = Weather.lookup(2379574, Weather::Units::CELSIUS)
	end

	def show
		#if you put a form tag in the index, and had it direct to the show page, modifying the currently hard coded WOEID, then you could have the show page and the weather info change based on what the user put in on the index
	end
end
