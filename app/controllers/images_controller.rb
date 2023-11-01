class ImagesController < ApplicationController
    def new
      @image = Image.new
    end

    def create
      @image = Image.new(image_params)
      @log_climbs = OutdoorClimbing.where(user_id: current_user.id).order(date: :desc)

      if @image.save
        redirect_to root_path, notice: "Your image was successfully uploaded."
      else
        render 'index'
      end
    end
  
    def show
      @images = Dir.glob("public/uploads/")
      
    end
  
    def index
      @images = Dir.glob("public/uploads/")
    end
    
    # def display
    #   @image_folder_path = Rails.root.join('public', 'uploads')
    #   @images = Dir.glob(File.join(@image_folder_path, '**', '*.{jpg,png,gif}'))
  
  
    #   end


    private
  
    def image_params
      params.require(:image).permit(:title, :image, :outdoor_climbing_id)
    end
  end