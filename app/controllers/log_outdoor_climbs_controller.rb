class LogOutdoorClimbsController < ApplicationController
  
  def index
    @log_climbs = OutdoorClimbing.all
 
  end
  
  def edit
    @log_climb = OutdoorClimbing.find(params[:id])
  end

  def update
    @log_climb = OutdoorClimbing.find(params[:id])

    if @log_climb.update(log_climb_params)
      redirect_to log_outdoor_climbs_path, notice: "Climb updated successfully!"
    else
      render :edit
    end
  end


  def new

    @log_climb = OutdoorClimbing.new
    @log_climbs = OutdoorClimbing.all

 
  end
  

  def create
    @log_climb = OutdoorClimbing.new(log_climb_params)
    @log_climbs = OutdoorClimbing.all
    if @log_climb.save
      redirect_to log_outdoor_climbs_url, notice: "Climb logged successfully!"
    else
      render :new
    end
  end

  private

  def log_climb_params
    params.require(:outdoor_climbing).permit(:date, :sport, :trad, :bouldering, :location, individual_outdoor_climbs_attributes:[:id, :climb_name, :grade, :climbing_style, :tick, :notes, :climbing_partner, :_destroy])
  end
end