feature 'Adds bookmarks to bookmark list' do

    scenario 'user visits adds bookmark to bookmark list' do
        visit('/bookmarks') 
        fill_in 'bookmarkURL', with: 'https://www.postgresqltutorial.com/postgresql-cheat-sheet/'
        click_button 'Submit'
        expect(page).to have_content "https://www.postgresqltutorial.com/postgresql-cheat-sheet/"
    end
end