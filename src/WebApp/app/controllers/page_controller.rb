class PageController < ApplicationController

	def show
		render params[:id] rescue render 'home'
	end
	
end
