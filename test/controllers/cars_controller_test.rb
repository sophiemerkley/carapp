require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get simulator" do
    get :simulator
    assert_response :success
  end

end
