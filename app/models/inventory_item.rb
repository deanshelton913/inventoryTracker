class InventoryItem < ActiveRecord::Base
  	attr_accessible :asset_tag, :cost, :date_purchased, :location, :make, :model, :name, :project_id
  	validates :name, :presence => true
	validates :cost, :presence => true
	validates :date_purchased, :presence => true
	validates :location, :presence => true
	validates :make, :presence => true
	validates :model, :presence => true
  	validates :asset_tag, :presence => true,
  			:uniqueness => { :case_sensitive => false }
end
