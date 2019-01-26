class Room
  attr_reader :name, :guests, :size, :current_song, :song_list, :playlist

  def initialize(name, size, song_list, playlist)   # new playlist instance each room instance?
    @name = name
    @guests = []
    @size = size
    @current_song = current_song
    @song_list = song_list # song_library instanced object
    @playlist = playlist
  end



  def play_next
    @current_song = @playlist.play_next   #takes next song from playlist (removed from playlist) and passes it into room's current song
  end

  def check_in(guest)
    if @guests.count < @size
      @guests << guest
      return "Guest #{guest.name} has been checked into #{@name}."
    else
      return "Sorry, #{@name} is currently full."
    end
  end

  def check_out(guest)
    @guests.delete(guest)
  end

end

# def find_song(song_title, song_artist)
#   song_title.capitalize
#   song_artist.capitalize
#   @song_list.find{|song| song.title == song_title && song.artist == song_artist}
# end
