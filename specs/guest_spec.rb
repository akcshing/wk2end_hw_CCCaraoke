require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")

class TestGuest < MiniTest::Test

  def setup
    @song_1 = Song.new("On Melancholy Hill", "Gorillaz")

    @guest_1 = Guest.new("Alex", true, @song_1, 100)


  end

  def test_get_guest_attr
    assert_equal("Alex", @guest_1.name)
    assert_equal(true, @guest_1.skills)
    assert_equal(@song_1, @guest_1.fav)
    assert_equal(100, @guest_1.money)
  end
end
