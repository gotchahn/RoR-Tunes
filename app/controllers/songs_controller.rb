class SongsController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  def create
    @album = Album.find(params[:album_id])

    @song = @album.songs.build(song_params)

    if @song.save
      redirect_to @album
    else
      render :new
    end
  end


  def destroy
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])

    @song.destroy
    redirect_to @album, flash: {notice: "Cancion Eliminada!"}
  end

  private

    def song_params
      params.require(:song).permit!
    end
end
