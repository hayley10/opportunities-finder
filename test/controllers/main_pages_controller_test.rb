require 'test_helper'

class MainPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_pages_home_url
    assert_response :success
  end

  test "should get list" do
    get main_pages_list_url
    assert_response :success
  end

  test "should get new" do
    get main_pages_new_url
    assert_response :success
  end

end
