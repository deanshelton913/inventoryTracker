class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.float :total_budget
      t.float :remaining_budget
      t.string :company
      t.datetime :contract_start_date
      t.datetime :contract_end_date

      t.timestamps
    end
  end
end
