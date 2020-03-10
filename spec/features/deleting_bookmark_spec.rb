# frozen_string_literal: true

feature 'deleting a new bookmark' do
  scenario 'A user can delete a bookmark from Bookmark Manager' do
    Bookmark.create(url: 'https://www.reddit.com', title: 'Reddit')
    visit('/bookmarks')
    expect(page).to have_link('Reddit', href: 'https://www.reddit.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Reddit', href: 'https://www.reddit.com')
  end
end
