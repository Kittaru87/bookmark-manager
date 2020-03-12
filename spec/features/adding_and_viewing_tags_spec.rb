feature 'Adding and viewing tags' do
  feature 'a user can add and then view a tag' do
    scenario 'a tag is added to a bookmark' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

      visit '/bookmarks'
      first('.bookmark').click_button 'Add tag'

      expect(current_path).to eq "/bookmarks/#{bookmark.id}/tags/new"

      fill_in 'tag', with: 'coding'
      click_button 'Submit'

      expect(current_path).to eq '/bookmarks'
      expect(first('.bookmark')).to have_content 'coding'
    end
  end
end