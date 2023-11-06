class NameofuserController < ApplicationController
  def new
    @nameofuser = current_user.build_nameofuser(nameofuser_params)
  end

  def create
    @nameofuser = current_user.nameofuser.new(nameofuser_params)
    
    if @nameofuser.save
      redirect_to root_path, notice: 'Name saved successfully!'
    else
      redirect_to edit_user_registration_path, alert: 'Name could not be saved!'
    end
  end


  
  private
  
  def nameofuser_params
    params.require(:nameofuser).permit(:name)
  end
  

 
end