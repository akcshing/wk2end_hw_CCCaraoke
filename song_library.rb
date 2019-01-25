class Song_Library
  attr_reader :library

  def initialize(starting_library =[])
    @library = starting_library
    @filter_results = nil
  end

  def find_song(song_title, song_artist)
    found_song = @library.find{|song| song.title == song_title && song.artist == song_artist}
    return found_song
  end

  def filter_by(filter_search)
    @filter_results = @library.find_all{|song| song.title.include?(filter_search) || song.artist.include?(filter_search)}
  end


end
