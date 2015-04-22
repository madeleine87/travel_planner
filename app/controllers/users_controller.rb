class UsersController < ApplicationController

	load_and_authorize_resource
  skip_load_resource :only  => [:create]

	def index
		@users = User.includes(:city).paginate(:page => params[:page], :per_page => 5)
	end

	def show

	end

	def edit

	end

	def update
		if @user.update(user_params)
    	redirect_to @user
  	else
    	render 'edit'
  	end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
 	 		redirect_to @user
		else
  		render 'new'
  	end
	end

	def destroy
		@user.destroy
    redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :first_name, :last_name, :date_of_birth, :city_id)
	end
end
