require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class TestGuest < MiniTest::Test

  def setup
    @song_1 = Song.new("On Melancholy Hill", "Gorillaz")

    @guest_1 = Guest.new("Alex", true, @song_1, 100)


  end


end
