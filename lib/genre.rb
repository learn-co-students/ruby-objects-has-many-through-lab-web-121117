require "pry"


class Genre

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_object)
    @songs << song_object
  end

  def songs
    @songs
  end

  def artists
    self.songs.map do |song_object|
      song_object.artist
      # binding.pry
    end
  end
end
