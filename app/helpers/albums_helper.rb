module AlbumsHelper
  def sum_of_songs_duration(songs)
    songs.sum(:duration)
  end
end
