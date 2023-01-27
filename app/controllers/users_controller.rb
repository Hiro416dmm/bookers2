class UsersController < ApplicationController
  def new
  @user = User.find(params[:id])
    @post_images = @user.post_images    
  end
  
  def index
    
  end
  def edit
  
  end
end
