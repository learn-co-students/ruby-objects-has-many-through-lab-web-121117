class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    songs = @songs.select do |song|
      song.genre = self
    end
    songs.map { |song| song.artist }
    #binding.pry
  end
end
