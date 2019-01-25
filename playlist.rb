class Playlist
  attr_reader :song_list

  def initialize
    @song_list = []
  end

  def add_song(song)
    @song_list << song
  end


end
