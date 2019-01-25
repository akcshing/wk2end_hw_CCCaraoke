require("minitest/autorun")
require("minitest/rg")
require_relative("../playlist")
require_relative("../song")

class TestPlaylist < MiniTest::Test

  def setup
    @song_1 = Song.new("Edition", "Rex Orange County")
    @song_2 = Song.new("Emotionless", "Drake")

    @playlist_1 = Playlist.new

  end


end
