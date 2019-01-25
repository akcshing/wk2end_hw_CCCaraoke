require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../playlist")
require_relative("../room")

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

    @guests = [@guest_1, @guest_2, @guest_3]
    @room_1 = Room.new(@guests, 6, @playlist)
    @room_2 = Room.new([], 4, @playlist)
  end

  def test_getters
    assert_equal(@guests, @room_1.guests)
    assert_equal(6, @room_1.size)
    assert_equal(@playlist, @room_1.playlist)
  end

  def test_play_next_song_in_playlist
    @room_1.play_next
    assert_equal(@song_1, @room_1.current_song)
  end

  def test_check_in_guests

  end

  def test_check_out_guests

  end

  def test_add_song_to_song_list

  end
end
