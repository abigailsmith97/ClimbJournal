require "test_helper"

class LogOutdoorClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get log_outdoor_climbs_new_url
    assert_response :success
  end

  test "should get create" do
    get log_outdoor_climbs_create_url
    assert_response :success
  end
end
