require "test_helper"

class IndividualOutdoorClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should destroy individual_outdoor_climb" do
    assert_difference('IndividualOutdoorClimb.count', -1) do
      delete individual_outdoor_climb_url(@individual_outdoor_climb)
    end
end
