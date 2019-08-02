class Author 
  attr_accessor :name, :posts
  # , :author
  # , :title 
  
  #an array of all the artists:
  @@all = []
  @@post_count = 0 
  
  def initialize(name)
    @posts = []
    @name = name
    @@all << self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def author
    Author.all.select {|author| author.name == self}
  end
  
  def self.all
    @@all
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1 
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self 
  end

  def self.post_count
    @@post_count += 1 + 1
  end
  
  def artist_name
    
  end
  
end

