require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  
  def setup
    @city = cities(:warszawa)
    @district = @city.districts.build(name: "Example")
  end

  test "should be valid" do
    assert @district.valid?
  end

  test "city id should be present" do
    @district.city_id = nil
    assert_not @district.valid?
  end

  test "name should be present" do
    @district.name = "   "
    assert_not @district.valid?
  end
end
