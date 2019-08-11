class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @song
  end

  def add_song(song)
    @songs << songs
    song.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end
