# frozen_string_literal: true

require 'pg'

def setup_test_database
  p 'Setting up test database...'

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks, comments, tags and bookmarks_tags tables
  connection.exec('TRUNCATE bookmarks, comments, tags, bookmarks_tags, users;')
end
