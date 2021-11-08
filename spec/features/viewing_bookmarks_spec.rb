feature 'able to view bookmarks' do
  let(:bookmarks) { Bookmarks.new }

  scenario 'views bookmarks' do
    visit('/bookmarks')
    #click_button('View Bookmarks')
    expect(page).to have_content "http://www.bbc.co.uk http://www.github.com http://www.google.com"
  end
end