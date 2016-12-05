class UsersController < ApplicationController
  before_action :save_login_state, :only => [:new, :create]

  def index
    @user = User.all
  end

  def new
	@user = User.new
  end
  
  def show
    @user = User.find(params[:username])
  end
  
  def create
	@user = User.new(user_params)
	if @user.save
		puts"Registration succesful"
		flash[:notice] = "You have successfully registered."
		flash[:color] = "valid"
	else
		puts"Registration NOT succesful"
		flash[:notice] = "Form is invalid"
		flash[:color] = "invalid"
	end
	render "new"
  end
  
  private
  def user_params
	params.require(:user).permit(:username, :email, :encrypted_password, :admin, :banned)
  end
  
end
