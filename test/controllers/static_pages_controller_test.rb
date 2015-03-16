require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @static_text = " | Ruby on Rails Tutorial Sample App"
  end

  #Home Tests
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "home title is correct" do
    get :home
    assert_select "title", "Home" + @static_text
  end
  
  #Pages Tests
  test "should get pages" do
    get :pages
    assert_response :success
  end

  test "pages title is correct" do
    get :pages
    assert_select "title", "Pages" + @static_text
  end
  
  #About Tests
  test "should get about" do
    get :about
    assert_response :success
  end
  
  test "about title is correct" do
    get :about
    assert_select "title", "About" + @static_text
  end
  
  #Help Tests
  test "should get help" do
    get :help
    assert_response :success
  end
  
  test "help title is correct" do
    get :help
    assert_select "title", "Help" + @static_text
  end
end
