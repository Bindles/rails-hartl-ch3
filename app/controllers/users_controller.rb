class UsersController < ApplicationController
  def Users
  end

  def show
    @user = User.find_by(name: params[:name])

  end
  
  def create
    #@user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to frictorville!"
      #          #inferred/not needed user_url
      #redirect_to user_url(@user)
      redirect_to '/users/' + @user.name
    else 
      render 'new', status: :unprocessable_entity
    end
    
  end
  def new
    @user = User.new
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
