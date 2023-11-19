require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get Users" do
    get users_Users_url
    assert_response :success
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end
end
