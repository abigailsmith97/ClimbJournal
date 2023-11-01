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
        redirect_to root_path, notice: "Your image was successfully uploaded."
      else
        render 'index'
      end
    end
  
    def show
      # @log_climbs = OutdoorClimbing.where(user_id: current_user.id).order(date: :desc)
        
    #   @image = Image.find(params[:id])
      @images = Dir.glob("public/uploads/")
      
    end
  

    def display
      @image_folder_path = Rails.root.join('public', 'uploads')
      @images = Dir.glob(File.join(@image_folder_path, '**', '*.{jpg,png,gif}'))
  
        # render inline: <<-ERB
        #   <h1>Display Images</h1>

        #   <style>
        #     .image-grid {
        #       display: grid;
        #       grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        #       grid-gap: 10px;
        #     }

        #     .image-grid img {
        #       max-width: 100%;
        #       height: auto;
        #     }
        #   </style>

        #   <div class="image-grid">
        #     <% @images.each do |image_path| %>
        #       <%= image_tag image_path.gsub("#{Rails.root}/public", '') %>
        #     <% end %>
        #   </div>
        # ERB
      end


    private
  
    def image_params
      params.require(:image).permit(:title, :image, :outdoor_climbing_id)
    end
  end