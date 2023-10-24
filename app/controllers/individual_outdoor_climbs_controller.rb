class IndividualOutdoorClimbsController < ApplicationController

   
    def index
        @individual_outdoor_climbs = IndividualOutdoorClimb.all
        end
     
    def edit
        @individual_outdoor_climb = IndividualOutdoorClimb.find(params[:id])
    end

    
    def update
        @individual_outdoor_climb = IndividualOutdoorClimb.find(params[:id])
    
        if @individual_outdoor_climb.update(climb_params)
            redirect_to log_outdoor_climbs_path, notice: "Climb updated successfully!"
        else
            render :edit
        end
    end


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
    
    def destroy
        IndividualOutdoorClimb.find(f).destroy
        
    end

    private
  
    def climb_params
      params.require(:individual_outdoor_climb).permit(:climb_name, :grade, :climbing_style, :tick, :notes, :climbing_partner, :_destroy)
    end
  end



  