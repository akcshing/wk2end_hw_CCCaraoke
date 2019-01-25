class Song_Library
  attr_reader :library, :filter_results, :sorted_results

  def initialize(starting_library =[])
    @library = starting_library
    @filter_results = nil
    @sorted_results = nil
  end

  def find_song(song_title, song_artist)
    found_song = @library.find{|song| song.title == song_title && song.artist == song_artist}
    return found_song
  end

  def filter_by(filter_search)
    @filter_results = @library.find_all{|song| song.title.include?(filter_search) || song.artist.include?(filter_search)}
  end

  def add_song(song)
    @library << song
  end

  def sort_title_az
    @sorted_results = @library.sort_by{|song| song.title.downcase}
  end

  def sort_title_za
    @sorted_results = @library.sort_by{|song| song.title.downcase}.reverse
  end

  def sort_artist_az
    @sorted_results = @library.sort_by{|song| song.artist.downcase}
  end

  def sort_artist_za
    @sorted_results = @library.sort_by{|song| song.artist.downcase}.reverse
  end
end
