require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def artist 
    @artist
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end

#beyonce = Artist.new('Beyonce')

#love_on_top = Song.new("Love on Top")

#beyonce.add_song(love_on_top)

