class Room
  attr_reader :guests, :size, :current_song, :song_list

  def initialize(size, song_list)
    @guests = []
    @size = size
    @current_song = current_song
    @song_list = song_list
  end

  def find_song(song_title, song_artist)
    song_title.capitalize
    song_artist.capitalize
    @song_list.find{|song| song.title == song_title && song.artist == song_artist}
  end

  def add_song_to_playlist

  end



  def play_next(playlist)
    @current_song = playlist.play_next
  end

  def check_in
    @guests
  end

end
