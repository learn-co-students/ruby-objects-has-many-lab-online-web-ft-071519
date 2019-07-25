class Post
  attr_accessor :title, :author, :all
 @@all = []
  def initialize (title)
    @title = title
    @@all << self
   
  end
  
  def class_variable_get
 
  end
  
  def self.all
    
    @@all
  end
end