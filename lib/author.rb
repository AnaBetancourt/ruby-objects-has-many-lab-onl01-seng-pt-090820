class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select{|post| post.author == self}
  end 
  
  def add_post(new_post)
    new_post.author = self
  end
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
  end 
  
  
end