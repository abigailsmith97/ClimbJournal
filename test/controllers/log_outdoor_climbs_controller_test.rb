require "test_helper"

class LogOutdoorClimbsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers 
  test "should get outdoor climb index" do
    get log_outdoor_climbs_path
    assert_response :success
  end

  test "should get new outdoor climb log" do
    get new_log_outdoor_climb_path
    assert_response :success
  end

  test "should create a new outdoor climb log" do
    user = User.create!(email: "test@example.com", password: "password")
    sign_in user
    assert_difference('OutdoorClimbing.count') do
    post log_outdoor_climbs_path, params: { outdoor_climbing: { date: Date.today, climbing_type: "bouldering", location: "Test Location" } }
    end
    assert_redirected_to log_outdoor_climbs_path
  end

  test "should get edit page" do
    user = User.create!(email: "test@example.com", password: "password")
    log_climb = user.log_climbs.create!(date: Date.today, climbing_type: "bouldering", location: "Test Location")
    sign_in user 
    get edit_log_outdoor_climb_path(log_climb)
    assert_response :success
  end
  

  test "should update outdoor climb log" do
    user = User.create!(email: "test@example.com", password: "password")
    log_climb = user.log_climbs.create!(date: Date.today, climbing_type: "bouldering", location: "Test Location")
    patch log_outdoor_climb_path(log_climb), params: { outdoor_climbing: { location: "Updated Location" } }
    assert_redirected_to log_outdoor_climbs_path
    log_climb.reload
    assert_equal "Updated Location", log_climb.location
  end

  test "should destroy outdoor climb log" do
    user = User.create!(email: "test@example.com", password: "password")
    log_climb = user.log_climbs.create!(date: Date.today, climbing_type: "bouldering", location: "Test Location")
    assert_difference('OutdoorClimbing.count', -1) do
      delete log_outdoor_climb_path(log_climb)
    end
    assert_redirected_to log_outdoor_climbs_path
  end

  

end
