# frozen_string_literal: true

feature 'adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end

  scenario 'the bookmark must be a valid url' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a url')
    click_button('Submit')

    expect(page).not_to have_content 'not a url'
    expect(page).to have_content 'You must submit a valid URL.'
  end
end
