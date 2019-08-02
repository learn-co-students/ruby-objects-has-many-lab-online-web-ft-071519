class Song 
  attr_accessor :name, :artist
  
  #array of all the songs:
  @@all = []
  
  def initialize(name) 
    @name = name 
    @artist = artist 
    @@all << self 
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name 
    self.artist.name unless artist == nil 
  end
 
  
end

