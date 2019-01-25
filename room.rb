class Room
  attr_reader :guests, :size, :playlist, :current_song

  def initialize(guests, size, playlist)
    @guests = guests
    @size = size
    @playlist = playlist
    @current_song = current_song
  end

  def play_next
    @current_song = @playlist.play_next
  end

end
