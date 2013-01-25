require 'spec_helper'

describe Employee do
	before do
		@employee = Employee.new(
			:first_name => "John", 
			:last_name => "Smith", 
			:email => "johnS@vmc.com", 
			:phone => "(555) 555-55555"
			)
	end
	subject { @employee }

	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }
	it { should respond_to(:email) }
	it { should respond_to(:phone) }

	describe "when first_name is not present" do 
		before { @employee.first_name = " " }
		it { should_not be_valid }
	end
	describe "when last_name is not present" do 
		before { @employee.last_name = " " }
		it { should_not be_valid }
	end
	describe "when email is not present" do 
		before { @employee.email = " " }
		it { should_not be_valid }
	end
	describe "when phone is not present" do 
		before { @employee.phone = " " }
		it { should_not be_valid }
	end

end
