class ChangeDataTypeForInventoryItem < ActiveRecord::Migration
  def up
  	change_table :inventory_items do |t|
      t.change :asset_tag, :string
    end
  end

  def down
  	change_table :inventory_items do |t|
      t.change :asset_tag, :integer
    end
  end
end
