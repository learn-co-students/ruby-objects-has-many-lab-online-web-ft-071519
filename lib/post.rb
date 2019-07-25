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
  
  def self.author_name
    self.author
  end
end