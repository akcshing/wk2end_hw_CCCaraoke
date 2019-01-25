require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../playlist")

class TestGuest < MiniTest::Test

  def setup

    @song_1 = Song.new("On Melancholy Hill", "Gorillaz")

    @playlist = Playlist.new
    @playlist.add_song(@song_1)

    @guest_1 = Guest.new("Alex", true, @song_1, 100)

  end

  def test_get_guest_attr
    assert_equal("Alex", @guest_1.name)
    assert_equal(true, @guest_1.skills)
    assert_equal(@song_1, @guest_1.fav)
    assert_equal(100, @guest_1.money)
  end

  def test_guest_see_fav
    assert_equal("Oh my days! On Melancholy Hill is my JAM!", @guest_1.see_fav(@playlist.song_list))
  end


end
