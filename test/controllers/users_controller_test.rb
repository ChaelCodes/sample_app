require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "new user/signup title is correct" do
    get :new
    assert_select "title", full_title("Sign up")
  end

end
