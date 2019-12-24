
require 'pry'

class Artist
  attr_accessor :name, :songs,  :song_count
  @@all =[]
  def initialize (name)
    @name = name
    @songs =[]
  end
  
  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song=Song.new(name)
    song.name = name
    song.artist = self
    @songs << song
    @@all << song
#    
  end

  
  def self.song_count
   @@all.count
    
  end

end