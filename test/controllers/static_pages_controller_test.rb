require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
  	@base_title = "Project Demo"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get off" do
    get :off
    assert_response :success
    assert_select "title", "Off | #{@base_title}"
  end

  test "should get on" do
    get :on
    assert_response :success
    assert_select "title", "On | #{@base_title}"
  end


end
