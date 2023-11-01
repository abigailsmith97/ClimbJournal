class LogOutdoorClimbsController < ApplicationController
  
  def index
    @log_climbs = OutdoorClimbing.order(date: :desc)

    @image_folder_path = Rails.root.join('public', 'images')
    @images = Dir.glob(File.join(@image_folder_path, '*'))
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

    if params[:outdoor_climbing].present? && params[:outdoor_climbing][:main_image].present?
      @log_climb.main_image.attach(params[:outdoor_climbing][:main_image])
    end

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

  def update_image
    @log_climb =  # Assuming you have a current_user method
    
    if @user.avatar.attach(params[:avatar])
      flash[:notice] = "Avatar updated successfully"
    else
      flash[:alert] = "Error updating avatar"
    end
    
    redirect_to edit_user_path(@user) # Assuming you have an edit_user_path
  end

  private

  def log_climb_params
    params.require(:outdoor_climbing).permit(:date, :climbing_type, :location, :main_image, individual_outdoor_climbs_attributes:[:id, :climb_name, :grade, :climbing_style, :tick, :notes, :climbing_partner, :_destroy])
  end
end

# def acceptable_image
#   return unless main_image.attached?
#   unless main_image.blob.byte_size <= 1.megabyte
#     errors.add(:main_image, "is too big")
#   end
#   acceptable_types = ["image/jpeg", "image/png"]
#   unless acceptable_types.include?(main_image.content_type)
#     errors.add(:main_image, "must be a JPEG or PNG")
#   end
# end

