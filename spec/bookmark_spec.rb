
describe '.all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'makers');")
   
    bookmarks = Bookmarks.all
    bookmarks = bookmarks[0].title

    expect(bookmarks).to include('makers')
  end
end

require 'database_helpers'

describe '.create' do
  it 'creates a new bookmark' do
    bookmark = Bookmarks.create(new_url: 'http://www.example.org', new_title: 'Test Bookmark')
    persisted_data = persisted_data(id: bookmark.id)

    expect(bookmark).to be_a Bookmarks
    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'Test Bookmark'
    expect(bookmark.url).to eq 'http://www.example.org'
  end
end