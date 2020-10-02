class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author
    Author.new(name)
  end
  
  def author_name
    Post.author.name 
  end 
  
  
  
  
end