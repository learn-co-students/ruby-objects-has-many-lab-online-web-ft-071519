class Author 
  
  attr_accessor :name, :posts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def author 
    @author = author
  end 
  
  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
    self.add_post(post)
  end
  
  def self.post_count
    Post.all.count
  end
  
end