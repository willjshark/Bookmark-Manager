feature 'able to view bookmarks' do
  let(:bookmarks) { Bookmarks.new }

  scenario 'views bookmarks' do
    visit('/bookmarks')
    #click_button('View Bookmarks')
    expect(page).to have_content "http://www.bbc.co.ukhttp://www.github.comhttp://www.google.com"
  end
end