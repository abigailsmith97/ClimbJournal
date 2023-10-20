class IndividualOutdoorClimbsController < ApplicationController
    def new
        @individual_outdoor_climbs = IndividualOutdoorClimb.all
      @individual_outdoor_climb = IndividualOutdoorClimb.new
    end
  
    def create
        @individual_outdoor_climbs = IndividualOutdoorClimb.all
      @individual_outdoor_climb = IndividualOutdoorClimb.new(climb_params)
  
      if @individual_outdoor_climb.save
        redirect_to @individual_outdoor_climb, notice: 'Climb was successfully added.'
      else
        render :new
      end
    end
  
    private
  
    def climb_params
      params.require(:individual_outdoor_climb).permit(:climb_name, :grade, :climbing_style, :tick, :notes, :climbing_partner)
    end
  end