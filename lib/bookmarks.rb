class Bookmarks

  attr_reader :bookmark_list
  
  def initialize
    @bookmark_list = ["http://www.bbc.co.uk", "http://www.github.com", "http://www.google.com"]
  end

  def all
     @bookmark_list.join(" ")
  end

end
