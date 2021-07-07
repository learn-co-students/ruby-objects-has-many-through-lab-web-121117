require 'pry'

class Artist
    attr_accessor :songs, :artist, :genre
    attr_reader :name

   def initialize(name)
     @name = name
     @songs = []
   end

   def add_song(song) #input a song that would go to the array to that artist
    @songs << song
    song.artist = self #self
    #allthesingleladies.beyonce = Artist - an instance of the class
   end

   def genres
     @songs.collect do |song |
       song.genre
   end
 end


# binding.pry
end
