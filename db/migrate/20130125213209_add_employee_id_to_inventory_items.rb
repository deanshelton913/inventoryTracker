class AddEmployeeIdToInventoryItems < ActiveRecord::Migration
  def change
  	add_column :inventory_items, :employee_id, :integer
  end
end
