class HotelsController < ApplicationController
	def index
		@hotels = Hotel.all
	end

	def new
		@hotel = Hotel.new
	end

	def create
		Hotel.create(hotel_params.merge(user:current_user))
		redirect_to_page_with_notice(hotels_path,"Your hotel has been created. #{current_user.name}!")
	end

	def show
		findhotel
	end

	def edit
		findhotel
	end

	def update
		findhotel
		@hotel.update(hotel_params)
		redirect_to_page_with_notice(root_path,"Your hotel has been updated. #{@hotel.user.name} !")

	end

	def destroy
		findhotel
		@hotel.delete
	end



# ======================================================================================


	def hotel_params
		hotel = params[:hotel]

		if current_user.admin?
			hotel.permit(:name, :location, :description, :user_id, :photo)
		else
			hotel.permit(:name, :location, :description, :photo)
		end
	end

	def redirect_to_page_with_notice(page,notice)
		redirect_to(page,notice: notice)
	end


	def findhotel
		@hotel = Hotel.find(params[:id])
	end


end