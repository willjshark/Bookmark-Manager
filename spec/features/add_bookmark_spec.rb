feature 'Adds bookmarks to bookmark list' do

    scenario 'user visits adds bookmark to bookmark list' do
        visit('/bookmarks') 
        fill_in 'bookmarkURL', with: 'https://www.postgresqltutorial.com/postgresql-cheat-sheet/'
        fill_in 'bookmark_title', with: 'postgres'
        click_button 'Submit'
        expect(page).to have_link('postgres', href: "https://www.postgresqltutorial.com/postgresql-cheat-sheet/") 
    end
end