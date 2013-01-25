require 'spec_helper'

describe InventoryItem do
  before do
  	@inventoryitem = InventoryItem.new(
  		:asset_tag => "Laptop", 
  		:cost => 1100.94, 
  		:date_purchased => DateTime.now, 
  		:location => "VMC Headquarters, Redmond WA", 
  		:make => "Apple", 
  		:model => "Macbook Pro", 
  		:name => "Laptop", 
  		:project_id => (1..9).to_a.shuffle.join
  		)
  end

  subject { @inventoryitem }

  it { should respond_to(:name) }
  it { should respond_to(:cost) }
  it { should respond_to(:date_purchased) }
  it { should respond_to(:location) }
  it { should respond_to(:make) }
  it { should respond_to(:model) }
  it { should respond_to(:asset_tag) }
  it { should respond_to(:project_id) }

  describe "when name is not present" do 
  	before { @inventoryitem.name = " " }
  	it { should_not be_valid }
  end

  describe "when cost is not present" do 
  	before { @inventoryitem.cost = " " }
  	it { should_not be_valid }
  end

  describe "when date_purchased is not present" do 
  	before { @inventoryitem.date_purchased = " " }
  	it { should_not be_valid }
  end

  describe "when location is not present" do 
  	before { @inventoryitem.location = " " }
  	it { should_not be_valid }
  end

  describe "when make is not present" do 
  	before { @inventoryitem.make = " " }
  	it { should_not be_valid }
  end

  describe "when model is not present" do 
  	before { @inventoryitem.model = " " }
  	it { should_not be_valid }
  end

  describe "when asset_tag is not present" do 
  	before { @inventoryitem.asset_tag = " " }
  	it { should_not be_valid }
  end

  describe "when asset_tag contains alpha chars" do 
  	before { @inventoryitem.asset_tag = "928364098R" }
  	it { should be_valid }
  end

  describe "when asset_tag contains dash chars" do 
  	before { @inventoryitem.asset_tag = "92836-4098R" }
  	it { should be_valid }
  end

  describe "when asset_tag contains dash chars" do 
  	before { @inventoryitem.asset_tag = "92836-4098R" }
  	it { should be_valid }
  end

  describe "when project_id is not present" do 
  	before { @inventoryitem.project_id = " " }
  	it { should_not be_valid }
  end

end
