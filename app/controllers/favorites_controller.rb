class FavoritesController < ApplicationController
	def index
		@albums = current_user.favalbums
	end
	def create
		@album = Album.find(params[:album_id])
		current_user.favalbums << @album
		respond_to do |format|
      format.html { redirect_to :back}
      format.js 
    end
		
	end

	def destroy
		@album = Album.find(params[:album_id])
		current_user.favorites.find_by(album: @album).destroy
		respond_to do |format|
      format.html { redirect_to :back}
      format.js 
  	end
	end
end
