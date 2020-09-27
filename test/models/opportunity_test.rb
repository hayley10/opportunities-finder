require 'test_helper'

class OpportunityTest < ActiveSupport::TestCase
  
  def setup
    @city = cities(:warszawa)
    @district = districts(:mokotów)
    @opportunity = Opportunity.new(address: "Example 23", size: 50.5, rooms: 3, floor: 3, listing_price: 400000, estimated_price: 350000, 
      description: "Example description", city_id: @city.id, district_id: @district.id)
  end

  test "should be valid" do
    assert @opportunity.valid?
  end

  test "city id should be present" do
    @opportunity.city_id = nil
    assert_not @opportunity.valid?
  end

  test "district id should be present" do
    @opportunity.district_id = nil
    assert_not @opportunity.valid?
  end

  test "address should be present" do
    @opportunity.address = "   "
    assert_not @opportunity.valid?
  end

  test "size should be present" do
    @opportunity.size = "   "
    assert_not @opportunity.valid?
  end

  test "listing_price should be present" do
    @opportunity.listing_price = "   "
    assert_not @opportunity.valid?
  end
end
