class Genre
#has Many Songs
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.map {|song_instance| song_instance.artist}
  end


end
