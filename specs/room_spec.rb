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

    @guest_1 = Guest.new("Alex", false, @song_1, 30)
    @guest_2 = Guest.new("Stacey", true, @song_2, 20)
    @guest_3 = Guest.new("Michael", false, @song_3, 40)

    @playlist = Playlist.new
    @playlist.add_song(@song_1)
    @playlist.add_song(@song_2)
    @playlist.add_song(@song_3)

    @song_list = Song_Library.new([@song_1, @song_2, @song_3, @song_4])

    @guests = [@guest_1, @guest_2, @guest_3]
    # @room_1 = Room.new(@guests, 6, @playlist, @song_list)  # removing guests parameter

    @room_2 = Room.new(4, @song_list)

  end

  def test_getters
    # assert_equal(@guests, @room_1.guests)
    assert_equal(4, @room_2.size)
    assert_equal(@song_list, @room_2.song_list)
  end

  def test_count_guests__empty
    assert_equal([], @room_2.guests)
  end

  def test_check_in_guests
    @room_2.check_in(@guest_1)
    @room_2.check_in(@guest_3)
    assert_equal(2, @room_2.guests.count)
  end

  def test_check_out_guests
    @room_2.check_in(@guest_1)
    @room_2.check_in(@guest_3)
    @room_2.check_out(@guest_1)
    assert_equal(1, @room_2.guests.count)
    assert_equal([@guest_3], @room_2.guests)
  end

  def test_play_next_song_in_playlist
    @room_2.play_next(@playlist)
    assert_equal(@song_1, @room_2.current_song)
  end


end

#
#
#
