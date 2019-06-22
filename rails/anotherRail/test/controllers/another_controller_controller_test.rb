require 'test_helper'

class AnotherControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get action1" do
    get another_controller_action1_url
    assert_response :success
  end

end
