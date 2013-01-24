class InventoryItemsController < ApplicationController
	def index
		@inventoryitems = InventoryItem.all
	end
	def show
		@inventoryitem = InventoryItem.find(params[:id])
	end
	def new
		@inventoryitem = InventoryItem.new
	end
	def create
		@inventoryitem = InventoryItem.new(params[:inventory_item])
		if @inventoryitem.save
	      	flash[:success] = "YAY THIS WAS SAVED!"
			redirect_to @inventoryitem
		else
			render 'new'
		end
	end

end
