require "test_helper"

class LogOutdoorClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should get outdoor climb index" do
    get log_outdoor_climbs
    assert_response :success
  end
end
