require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../playlist")

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


    @room_1 = Room.new()

  end


end
