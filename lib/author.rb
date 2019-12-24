require 'pry'

class Author

 attr_reader :name, :posts, :all
 
@@all=[]
 def initialize(name)
   @name = name
   @posts = []
    @@all
 end

 def add_post(post)
     @posts << post
     @@all << post
    post.author = self
 end
 
   def add_post_by_title(title)
    post=Post.new(title)
    post.title = title
    post.author = self
    @posts << post
    @@all << post
#    
  end
  
  def self.post_count
    @@all.count
  end
  

end 