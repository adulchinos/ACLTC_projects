class DeitiesController < ApplicationController

	def index
		@deities = Deity.all
	end

	def show
		@deity = Deity.find(params[:id])
	end

	def new
	end

	def create
		@deity = Unirest.post("#{ENV['API_BASE_URL']}/deities.json", 
			:headers => {"Accept" => "application/json"}, 
			:parameters => {
			:name => params[:name], 
			:animals => params[:animals], 
			:places => params[:places],
			:aegis => params[:aegis]}).body

		redirect_to deity_path(@deity["id"])
	end
end
