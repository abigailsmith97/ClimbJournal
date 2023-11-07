require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get climbing logs index" do
    get log_outdoor_climbs_url
    assert_response :success
  end

  test "should get log new climb page" do 
    get new_log_outdoor_climb_url
    assert_response :success
  end

  test "should get climbing map" do 
    get climbingmap_url
    assert_response :success
  end

  test "should get gallery" do 
    get gallery_url
    assert_response :success
  end
end