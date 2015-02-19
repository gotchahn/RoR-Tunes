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

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      redirect_to @album
    else
      render :songs_batch
    end
  end

  def album_params
    params.require(:album).permit!
  end

  def songs_batch
    @album = Album.find(params[:id])
  end

end
