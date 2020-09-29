require 'test_helper'

class OpportunitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get opportunities_new_url
    assert_response :success
  end

end
