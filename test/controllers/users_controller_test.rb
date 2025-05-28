# test/controllers/users_controller_test.rb

require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_url # FIX: Changed from users_new_url to signup_url
    assert_response :success
  end
end