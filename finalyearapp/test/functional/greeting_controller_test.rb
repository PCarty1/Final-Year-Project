require 'test_helper'

class GreetingControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get bye" do
    get :bye
    assert_response :success
  end

end
