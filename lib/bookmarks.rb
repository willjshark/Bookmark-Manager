require 'pg'

class Bookmarks

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 
    result = connection.exec "SELECT * FROM bookmarks"
    bookmark_list = result.map do |bookmark| 
      bookmark['url']
    end
  end

  def self.add(new_url:) 
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 
     result = connection.exec "INSERT INTO bookmarks (url) VALUES ('#{new_url}')"
  end

 
end
