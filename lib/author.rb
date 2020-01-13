class Author
  attr_accessor :name 
  @@post_count = 1
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def posts 
    Post.all.select {|post| post.author == self}
  end 
  
  def add_post(post)
    
     @posts << post 
     @@post_count +=1
 end 
 
 
 
end