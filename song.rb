class Song
  attr_reader :title, :artist

  def initialize(title, artist)
    @title = title
    @intro = "#{title} intro..."  # what is returned from playing the song
    @artist = artist
  end

  def play
    return @intro
  end

end
