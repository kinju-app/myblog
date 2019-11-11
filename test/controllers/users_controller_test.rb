require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  @user = User.create(username: "Kinjal", email: "email@email.com", password: "password")

  test "should get index" do
    get users_path
    assert_response :success
  end

  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should get create" do
    get users_path(@user)
    assert_response :success
  end

end
