class NameofuserController < ApplicationController
  def new
    @nameofuser = Nameofuser.new
  end

  def create
    @nameofuser = current_user.nameofuser.new(nameofuser_params)
    
    if @nameofuser.save
      redirect_to root_path, notice: 'Name saved successfully!'
    else
      redirect_to new, alert: 'Name could not be saved!'
    end
  end

  # def edit
  #   @nameofuser = Nameofuser.find(params[:id])
  # end
  
  # def update
  #   @nameofuser = Nameofuser.find(params[:id])
  #   if @nameofuser.update(nameofuser_params)
  #     redirect_to root_path, notice: 'Name updated successfully!'
  #   else
  #     render :edit
  #   end
  # end
  
  private
  
  def nameofuser_params
    params.require(:nameofuser).permit(:name)
  end
  private

 
end