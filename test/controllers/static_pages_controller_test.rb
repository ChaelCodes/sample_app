require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  #Home Tests
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "home title is correct" do
    get :home
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end
  
  #Pages Tests
  test "should get pages" do
    get :pages
    assert_response :success
  end

  test "pages title is correct" do
    get :pages
    assert_select "title", "Pages | Ruby on Rails Tutorial Sample App"
  end
  
  #About Tests
  test "should get about" do
    get :about
    assert_response :success
  end
  
  test "about title is correct" do
    get :about
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
  
  #Help Tests
  test "should get help" do
    get :help
    assert_response :success
  end
  
  test "help title is correct" do
    get :help
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end
end
