class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.string :make
      t.string :model
      t.integer :asset_tag
      t.integer :project_id
      t.string :location
      t.float :cost
      t.timestamp :date_purchased

      t.timestamps
    end
  end
end
