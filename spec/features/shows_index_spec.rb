feature 'Shows index' do

    scenario 'visits index page' do
        visit('/')
        expect(page).to have_content "View Bookmarks"
    end
end