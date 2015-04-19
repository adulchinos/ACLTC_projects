class Api::V1::DeitiesController < ApplicationController

	def index
		@deities = Deity.all
	end

	def show
		@deity = Deity.find(params[:id])
	end

	def create
		@deity = Deity.create(:name => params[:name], :animals => params[:animals], 
			:places=> params[:places], :aegis => params[:aegis])
		render 'show'
		if@deity.save
		else
			render json: { errors: @deity.errors.full_messages }, status: 422
		end
	end

end 
