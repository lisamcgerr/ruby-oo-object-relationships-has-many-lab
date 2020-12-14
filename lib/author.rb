require 'pry'
class Author
    attr_accessor :post, :name
    
    @@all = [ ]
    def initialize(name)
        @name = name
        @posts = [ ] 
        @@all << self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.size
    end
end

#dr_seuss= Author.new("Dr. Seuss")
#binding.pry