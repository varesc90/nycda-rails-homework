class HomeController < ApplicationController
	def nearbylocation
		@hotels = Hotel.near("#{params[:query]}", 500)
	end

end
