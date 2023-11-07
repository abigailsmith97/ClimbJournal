require "test_helper"

class LogOutdoorClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should get outdoor climb index" do
    get log_outdoor_climbs_url
    assert_response :success
  end


  test "should create new climbing log" do
    get new_log_outdoor_climb_url
    assert_response :success
  end
end
