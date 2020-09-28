require 'test_helper'

class MainPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get list" do
    get list_path
    assert_response :success
  end

  test "should get new" do
    get new_path
    assert_response :success
  end

end
