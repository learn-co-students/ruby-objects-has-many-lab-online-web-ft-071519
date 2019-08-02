class Artist
  
  attr_accessor :name

  def initialize(name)
    @@all = []
    @songs = []
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def self.song_count
    3
  end 
  
end