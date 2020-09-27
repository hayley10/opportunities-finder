require 'test_helper'

class CityTest < ActiveSupport::TestCase
  
  def setup
    @city = City.new(name: "Example")
  end

  test "should be valid" do
    assert @city.valid?
  end

  test "name should be present" do
    @city.name = "   "
    assert_not @city.valid?
  end
end
