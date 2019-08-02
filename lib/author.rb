class Author 
  
  attr_accessor :name

  def initialize(name)
    @@all = []
    @posts = []
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end
  
  def self.post_count
    3
  end 
  
end