class Room
  attr_reader :guests, :size, :playlist, :current_song, :song_list

  def initialize(size, song_list)
    @guests = []
    @size = size
    @playlist = []
    @current_song = current_song
    @song_list = song_list
  end

  def add_song(song_title, song_artist)
    @playlist << @song_list.find{|song| song.title == song_title}

  end



  def play_next
    @current_song = @playlist.play_next
  end

  def check_in
    @guests
  end

end
