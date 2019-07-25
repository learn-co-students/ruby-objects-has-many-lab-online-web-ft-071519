require 'pry'

class Artist
  attr_accessor :name, :songs, :song, :song_count
  def initialize (name)
    @name = name
    @songs =[]
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(title)
    song=Song.new(title)
    song.name = title
    song.artist = self
    @songs << song
#    
  end

  
  def self.song_count
   
    
  end

end