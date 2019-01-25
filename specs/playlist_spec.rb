require("minitest/autorun")
require("minitest/rg")
require_relative("../playlist")
require_relative("../song")

class TestPlaylist < MiniTest::Test

  def setup
    @song_1 = Song.new("Edition", "Rex Orange County")

    @playlist_1 = []
  end


end
