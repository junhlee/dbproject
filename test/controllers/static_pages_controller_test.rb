require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get customer_sign_up" do
    get :customer_sign_up
    assert_response :success
  end

  test "should get vendor_sign_up" do
    get :vendor_sign_up
    assert_response :success
  end

end
