require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("Tongues")
    @song_2 = Song.new("Mona Lisa")

  end


  def test_get_song_title
    assert_equal("Tongues", @song_1.title)
  end

end
