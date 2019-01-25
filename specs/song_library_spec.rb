require("minitest/autorun")
require("minitest/rg")
require_relative("../song_library")
require_relative("../song")

class TestSongLibrary < MiniTest::Test

  def setup

    @song_1 = Song.new("Sunflower", "Post Malone, Swae Lee")
    @song_2 = Song.new("Place Your Hands", "Reef")
    @song_3 = Song.new("eez-eh", "Kasabian")
    @song_4 = Song.new("Always", "blink-182")
    @song_5 = Song.new("Rockstar", "Nickleback")


    @starting_library = [@song_1, @song_2, @song_3, @song_4]

    @song_library = Song_Library.new(@starting_library)

  end

  def test_get_library_attr
    assert_equal(@starting_library, @song_library.library)
  end

  def test_find_song__and_return_it
    assert_equal(@song_2, @song_library.find_song("Place Your Hands", "Reef"))
  end

  def test_filter
    assert_equal([@song_1, @song_2, @song_3], @song_library.filter_by("ee"))
  end

  def test_add_song_to_library
    # assert_equal()
  end

  def test_sort_library__by_artist__a_to_z
  end

  def test_sort_library__by_artist__z_to_a
  end

  def test_sort_library__by_title__a_to_z
  end

  def test_sort_library__by_title__z_to_a
  end


end
