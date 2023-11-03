require 'test_helper'

class IndividualOutdoorClimbsControllerTest < ActionController::TestCase
  

  test "individual_outdoor_climbs should have outdoor_climbing_id" do
    individual_outdoor_climbs = IndividualOutdoorClimb.all

    individual_outdoor_climbs.each do |climb|
      assert_not_nil climb.outdoor_climbing_id, "IndividualOutdoorClimb with ID #{climb.id} has a nil outdoor_climbing_id"
    end
  end

  
end