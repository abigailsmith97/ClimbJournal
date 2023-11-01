class ImagesController < ApplicationController
    def new
      @image = Image.new
    end
  
    # def new
    #   @images = Image.all
    #   @log_climbs = OutdoorClimbing.where(user_id: current_user.id).order(date: :desc)
    # end

    def create
      @image = Image.new(image_params)
      @log_climbs = OutdoorClimbing.where(user_id: current_user.id).order(date: :desc)

      if @image.save
        # notice: "Image uploaded successfully."
      else
        render 'index'
      end
    end
  
    def show
      @log_climbs = OutdoorClimbing.where(user_id: current_user.id).order(date: :desc)
        
    #   @image = Image.find(params[:id])
      @images = Image.all 
      
    end
  

    def display_images
        @image_folder_path = Rails.root.join('public', 'images')
        @images = Dir.glob(File.join(@image_folder_path, '*'))
      end


    private
  
    def image_params
      params.require(:image).permit(:title, :image, :outdoor_climbing_id)
    end
  end