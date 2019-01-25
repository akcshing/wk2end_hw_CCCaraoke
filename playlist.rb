require("pry")

class Playlist
  attr_reader :song_list

  def initialize
    @song_list = []
  end

  def add_song(song)  # can i modify with splat to accept multiple songs?
    @song_list << song
  end

  def play_next
    @song_list.shift # removes first value and returns it
    # binding.pry
  end

end
