class LogOutdoorClimbsController < ApplicationController
  
  def index
    @log_climbs = OutdoorClimbing.order(date: :desc)
    
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
    @individual_outdoor_climbs = IndividualOutdoorClimb.all
    @log_climb = OutdoorClimbing.new
    @log_climbs = OutdoorClimbing.all

  end

  def destroy
    @log_climb = OutdoorClimbing.find(params[:id])
    @log_climb.destroy
  
    redirect_to log_outdoor_climbs_url, notice: "Your log was successfully deleted."
  end
  

  def create
    @log_climb = current_user.log_climbs.build(log_climb_params)
  
    if @log_climb.save
      redirect_to log_outdoor_climbs_url, notice: "Climb logged successfully!"
    else
      render :new  # Render the new template if there are validation errors
    end
  end

  def filter
    @climbing_type = params[:climbing_type]
    
    if @climbing_type == 'all'
      @log_climbs = OutdoorClimbing.order(date: :desc)
    else
      @log_climbs = OutdoorClimbing.where(climbing_type: @climbing_type).order(date: :desc)
    end
  
    render :index
  end

  def show
    @log_climb = OutdoorClimbing.find(params[:id])
  end

  private

  def log_climb_params
    params.require(:outdoor_climbing).permit(:date, :climbing_type, :location, images_attributes: [:id, :url, :_destroy], individual_outdoor_climbs_attributes:[:id, :climb_name, :grade, :climbing_style, :tick, :notes, :climbing_partner, :_destroy])
  end
end