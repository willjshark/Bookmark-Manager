class Bookmarks

  attr_reader :bookmark_list, :bookmarks

  def self.create
    @bookmarks = Bookmarks.new
  end

  def self.instance
    @bookmarks
  end
  
  def initialize
    @bookmark_list = ["http://www.bbc.co.uk", "http://www.github.com", "http://www.google.com"]
  end

  def all
     @bookmark_list.join
  end

end
