require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  #Home Tests
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "home title is correct" do
    get :home
    assert_select "title", full_title
  end
  
  #Pages Tests
  test "should get pages" do
    get :pages
    assert_response :success
  end

  test "pages title is correct" do
    get :pages
    assert_select "title", full_title("Pages")
  end
  
  #About Tests
  test "should get about" do
    get :about
    assert_response :success
  end
  
  test "about title is correct" do
    get :about
    assert_select "title", full_title("About")
  end
  
  #Help Tests
  test "should get help" do
    get :help
    assert_response :success
  end
  
  test "help title is correct" do
    get :help
    assert_select "title", full_title("Help")
  end
  
  #Contact Tests
  test "should get contact" do
    get :contact
    assert_response :success
  end
  
  test "contact title is correct" do
    get :contact
    assert_select "title", full_title("Contact")
  end
end
