class HomeController < ApplicationController
	def nearbylocation
		@hotels = Hotel.near("#{params[:query]}", 10, )
	end

end
