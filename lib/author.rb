class Author
  attr_accessor :name 
  @@post_count = 1
  
  def initialize(name)
    @name = name
    @post = []
  end 
  
  def posts 
    Post.all.select {|post| post.title == self
end