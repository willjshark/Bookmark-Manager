feature 'able to view bookmarks' do
  let(:bookmarks) { Bookmarks.new }

  scenario 'views bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.twitter.com/"
    expect(page).to have_content "http://www.google.com/"
  end
end