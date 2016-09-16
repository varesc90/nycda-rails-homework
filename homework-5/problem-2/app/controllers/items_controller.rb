class ItemsController < ApplicationController
	def index
	  @Items = Item.all
	end

	def show
	  @Item = Item.find(params[:id])
	end

	def new
	  @Item = Item.new
	end

	def create
	  Item.create(params[:item].permit(:name, :quantity, :price))
	end

	def edit
	  @Item = Item.find(params[:id])
	end

	def update
	  @Item = Item.find(params[:id])
	  @Item.update(params[:item].permit(:name, :quantity, :price))
	end

	def destroy
	  @Item = Item.find(params[:id])
	  @Item.delete
	end
end
