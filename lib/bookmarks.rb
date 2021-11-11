require 'pg'

class Bookmarks

  def self.title
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 
    result = connection.exec "SELECT * FROM bookmarks"
    bookmark_list = result.map do |bookmark| 
      bookmark['title']
    end
  end

  def self.url
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

  def self.add(new_url:, new_title:) 
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 
    connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{new_title}')"
    
  end

 
end
