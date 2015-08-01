class PageController < ApplicationController

	def show
		unless params[:id].blank?
			@pagename = params[:id] 
		else
			@pagename = 'home'
		end


		render @pagename #rescue render (@pagename = 'home')
			
			
		
	end
	
end
