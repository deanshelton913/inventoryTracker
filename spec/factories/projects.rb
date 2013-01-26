# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    total_budget 1.5
    remaining_budget 1.5
    company "MyString"
    contract_start_date "2013-01-25 13:54:33"
    contract_end_date "2013-01-25 13:54:33"
  end
end
