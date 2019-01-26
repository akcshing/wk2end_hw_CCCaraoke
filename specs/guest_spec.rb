require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../song_library")
require_relative("../playlist")
require_relative("../room")

class TestGuest < MiniTest::Test

  def setup

    @song_1 = Song.new("On Melancholy Hill", "Gorillaz")

    @playlist = Playlist.new
    @playlist.add_song(@song_1)

    @guest_1 = Guest.new("Alex", true, @song_1, 100)
    @guest_2 = Guest.new("Jim", false, @song_1, 15)
    @song_2 = Song.new("Place Your Hands", "Reef")
    @song_3 = Song.new("eez-eh", "Kasabian")
    @song_4 = Song.new("Always", "blink-182")
    @song_5 = Song.new("Rockstar", "Nickleback")


    @starting_library = [@song_1, @song_2, @song_3, @song_4]

    @song_library = Song_Library.new(@starting_library)

    @room = Room.new("Test Room", 4, @song_library, @playlist, 20)

  end

  def test_get_guest_attr
    assert_equal("Alex", @guest_1.name)
    assert_equal(true, @guest_1.skills)
    assert_equal(@song_1, @guest_1.fav)
    assert_equal(100, @guest_1.money)
  end

  def test_guest_see_fav
    assert_equal("Oh my days! On Melancholy Hill is my JAM!", @guest_1.see_fav(@playlist.song_queue))
  end

  def test_guest_can_sing
    assert_equal("La la laaaa...", @guest_1.sing)
  end

  def test_guest_can_sing__well?
    assert_equal("La la laaaa...", @guest_1.sing)
    assert_equal("Screeeeeech!...", @guest_2.sing)
  end

  def test_pay_fee__reduce_money
    @guest_1.pay_fee(10)
    assert_equal(90, @guest_1.money)
  end

  def test_pay_fee__returns_fee_integer
    assert_equal(10, @guest_1.pay_fee(10))
  end

  def test_pay_room_fee
    @guest_1.pay_fee(@room.fee)
    assert_equal(80, @guest_1.money)
  end

  def test_not_enough_money_to_pay_room_fee
    assert_equal(false, @guest_2.pay_fee(@room.fee)) #pay fee should return false if not enough money
  end



end
