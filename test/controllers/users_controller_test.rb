require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end
end
