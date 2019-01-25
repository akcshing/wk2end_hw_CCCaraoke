require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("Tongues", "Joywave")
    @song_2 = Song.new("Mona Lisa", "Lil Wayne, Kendrick Lamar")

  end


  def test_get_song_title
    assert_equal("Tongues", @song_1.title)
  end

  def test_play_song
    assert_equal("Tongues intro...", @song_1.play) #not just an attr reader, has to actually play the song
  end

  def test_get_song_artist
    assert_equal("Joywave", @song_1.artist)
  end
end
