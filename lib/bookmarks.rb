require 'pg'

class Bookmarks

  def self.all
    connection = PG.connect :dbname => 'bookmark_manager'
    result = connection.exec "SELECT * FROM bookmarks"
    bookmark_list = result.map do |bookmark| 
      bookmark['url']
    end
  end

 
end
