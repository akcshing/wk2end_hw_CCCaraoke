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

  def test_get_song_list
    assert_equal([], @playlist_1.song_list)
  end

  def test_add_song_to_song_list
    @playlist_1.add_song(@song_1)
    assert_equal([@song_1], @playlist_1.song_list)
  end
end
