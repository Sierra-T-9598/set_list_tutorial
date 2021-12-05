class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to "/artists"
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    redirect_to "/artists"
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to "/artists"
  end

# takes params object and calls .permit to pull out name key-value pair
private
  def artist_params
    params.permit(:name)
  end
end
