require("minitest/autorun")
require("minitest/rg")
require_relative("../playlist")
require_relative("../song")
require_relative("../room")

class TestPlaylist < MiniTest::Test

  def setup
    @song_1 = Song.new("Edition", "Rex Orange County")
    @song_2 = Song.new("Emotionless", "Drake")
    @song_3 = Song.new("eez-eh", "Kasabian")
    @song_4 = Song.new("Always", "blink-182")

    @playlist_1 = Playlist.new

    @playlist_2 = Playlist.new
    @playlist_2.add_song(@song_1)
    @playlist_2.add_song(@song_2)

    @playlist = Playlist.new
    @playlist.add_song(@song_1)
    @playlist.add_song(@song_2)
    @playlist.add_song(@song_3)

    @song_list = [@song_1, @song_2, @song_3, @song_4]

    @room = Room.new(4, @song_list)
    # @song_search = "Always", "blink-182"
  end

  def test_get_song_queue
    assert_equal([], @playlist_1.song_queue)
  end

  def test_add_song_to_song_queue
    @playlist_1.add_song(@song_1)
    assert_equal([@song_1], @playlist_1.song_queue)
  end

  def test_play_next_song
    assert_equal(@song_1, @playlist_2.play_next) #returns song, pops array
    assert_equal([@song_2], @playlist_2.song_queue)
  end

  def test_add_song_from_rooms_song_list
    @playlist.add_song(@room.find_song("Always", "blink-182"))
    assert_equal(@song_4, @playlist.song_queue.last)
  end


end
