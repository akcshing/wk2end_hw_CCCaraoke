class Room
  attr_reader :guests, :size, :playlist, :current_song :song_list

  def initialize(guests, size, playlist, song_list)
    @guests = guests
    @size = size
    @playlist = playlist
    @current_song = current_song
    @song_list = song_list
  end

  def play_next
    @current_song = @playlist.play_next
  end


end
