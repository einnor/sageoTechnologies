require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get clientsAndProjects" do
    get :clientsAndProjects
    assert_response :success
  end

  test "should get contactUs" do
    get :contactUs
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

end
