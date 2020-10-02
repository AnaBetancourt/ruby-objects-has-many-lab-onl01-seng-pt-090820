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
    new_title = Post.new(post_title)
    self.add_post(new_title)
  end 
  
  
end