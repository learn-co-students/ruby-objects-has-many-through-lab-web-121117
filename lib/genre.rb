class Genre
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def artists
    self.songs.map {|song| song.artist}
  end
end
