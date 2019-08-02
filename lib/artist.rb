class Artist 
  attr_accessor :name
  
  #an array of all the artists:
  @@all = []
  @@song_count = 0
  
  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    # @songs << song
    song.artist = self
    @@song_count += 1 
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
  end
  
  def self.song_count
    @@song_count += 1 + 1
  end
  
  
  
end