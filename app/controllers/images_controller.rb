class ImagesController < ApplicationController
    def new
      @image = Image.new
    end
  
    def create
      @image = Image.new(image_params)
      if @image.save
        redirect_to log_outdoor_climbs_path
    
      else
        render 'show'
      end
    end

    def show
        @image = Image.all
      end
  
    private
  
    def image_params
      params.require(:image).permit(:title, :image)
    end
  end
