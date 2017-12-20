class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

def artists
  @songs.map {|song_instance| song_instance.artist}
end

end
