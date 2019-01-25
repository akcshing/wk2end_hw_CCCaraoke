class Song
  attr_reader :title

  def initialize(title)
    @title = title
    @intro = "#{title} intro..."  # what is returned from playing the song
  end

  def play
    return @intro
  end

end
