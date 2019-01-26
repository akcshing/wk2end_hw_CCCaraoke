require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../playlist")
require_relative("../room")
require_relative("../song_library")

class TestRoom < MiniTest::Test

  def setup

    @song_1 = Song.new("Sunflower", "Post Malone, Swae Lee")
    @song_2 = Song.new("Place Your Hands", "Reef")
    @song_3 = Song.new("eez-eh", "Kasabian")
    @song_4 = Song.new("Always", "blink-182")
    @song_5 = Song.new("Hotel California", "Eagles")

    @guest_1 = Guest.new("Alex", false, @song_1, 30)
    @guest_2 = Guest.new("Stacey", true, @song_2, 20)
    @guest_3 = Guest.new("Michael", false, @song_3, 40)
    @guest_4 = Guest.new("James", false, @song_5, 50)
    @guest_5 = Guest.new("Mart", true, @song_4, 50)

    @playlist = Playlist.new
    @playlist.add_song(@song_1)
    @playlist.add_song(@song_2)
    @playlist.add_song(@song_3)

    @song_list = Song_Library.new([@song_1, @song_2, @song_3, @song_4])

    # @guests = [@guest_1, @guest_2, @guest_3]
    # @room_1 = Room.new(@guests, 6, @playlist, @song_list)  # removing guests parameter

    @room_2 = Room.new("Room 2", 4, @song_list, @playlist, 10)
    @room_fill = Room.new("Room Fill", 4, @song_list, @playlist, 10)
    @room_expensive = Room.new("Deluxe Room", 8, @song_list, @playlist, 40)
  end

  def test_getters
    # assert_equal(@guests, @room_1.guests)
    assert_equal("Room 2", @room_2.name)
    assert_equal(4, @room_2.size)
    assert_equal(@song_list, @room_2.song_list)
  end

  def test_count_guests__empty
    assert_equal([], @room_2.guests)
  end

  def test_check_in_guests
    @room_2.check_in(@guest_1)
    assert_equal("Guest Michael has been checked into Room 2.", @room_2.check_in(@guest_3))
    assert_equal(2, @room_2.guests.count)
  end

  def test_check_in_guest__into_full_room
    @room_fill.check_in(@guest_1)
    @room_fill.check_in(@guest_2)
    @room_fill.check_in(@guest_3)
    @room_fill.check_in(@guest_4)

    assert_equal("Sorry, Room Fill is currently full.", @room_fill.check_in(@guest_5))
    assert_equal(4, @room_fill.guests.count)
    assert_equal(@guest_4, @room_fill.guests.last)
  end

  def test_check_out_guests
    @room_2.check_in(@guest_1)
    @room_2.check_in(@guest_3)
    @room_2.check_out(@guest_1)
    assert_equal(1, @room_2.guests.count)
    assert_equal([@guest_3], @room_2.guests)
  end

  def test_get_next_song_from_playlist
    @room_2.play_next
    assert_equal(@song_1, @room_2.current_song)
  end

  def test_check_if_room_is_full
    @room_fill.check_in(@guest_1)
    @room_fill.check_in(@guest_2)
    @room_fill.check_in(@guest_3)
    @room_fill.check_in(@guest_4)

    assert_equal(true, @room_fill.full?)
  end



  def test_pay_fee_at_check_in__not_enough_money
    #guest has to check if they have enough money for fee
    assert_equal("Fee not paid, check in denied.", @room_expensive.check_in(@guest_1))
  end

  def test_room_accepts_fee_from_guest_and_add_to_till
    @room_2.check_in(@guest_1)
    assert_equal(10, @room_2.till)
    assert_equal(20, @guest_1.money)
  end


end

#
#
#
