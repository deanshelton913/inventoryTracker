class Project < ActiveRecord::Base
  attr_accessible :company, :contract_end_date, :contract_start_date, :name, :remaining_budget, :total_budget
end
