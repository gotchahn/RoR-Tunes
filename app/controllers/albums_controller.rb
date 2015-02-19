class AlbumsController < ApplicationController

  def index
    @albums = Album.order(created_at: :desc)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album= Album.new(album_params)

    if @album.save
      redirect_to @album
    else
      render :new
    end
  end

  def album_params
    params.require(:album).permit!
  end


end
