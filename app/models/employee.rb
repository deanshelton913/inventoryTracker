class Employee < ActiveRecord::Base
  has_many :inventory_items
  attr_accessible :email, :first_name, :last_name, :phone
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :phone, :presence => true
end
