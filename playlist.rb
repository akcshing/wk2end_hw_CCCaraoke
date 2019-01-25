require("pry")

class Playlist
  attr_reader :song_queue

  def initialize
    @song_queue = []
  end

  def add_song(song)  # can i modify with splat to accept multiple songs?
    @song_queue << song
  end

  def play_next
    @song_queue.shift # removes first value and returns it
    # binding.pry
  end

end
