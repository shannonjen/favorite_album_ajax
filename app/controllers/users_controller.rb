class UsersController < ApplicationController
 	def index
		@users = User.all
		@album = current_user.albums.build
		@albums = current_user.albums
	end

	def show
		@user = User.find(params[:id])
		@albums = current_user.albums
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	  if @user.save
	  	session[:user_id] = @user.id 
	    redirect_to @user
	  else
	    render 'new'
	  end
	end


	private
	
	def user_params
		params.require(:user).permit(:username, :password)
	
		
	end
end