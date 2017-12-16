

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def genres
    self.songs.collect do |song_object|
      song_object.genre
    end
  end

end
