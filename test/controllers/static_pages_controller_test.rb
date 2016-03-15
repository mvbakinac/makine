require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Gallery" do
    get :Gallery
    assert_response :success
  end

  test "should get Links" do
    get :Links
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
