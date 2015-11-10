require 'test_helper'

class RestaurantControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
