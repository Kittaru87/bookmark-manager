require 'pg'

class Bookmark

  # connects to database
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager') # connects to database via pg - a Ruby interface to PostgreSQL
    end

    result = connection.exec("SELECT * FROM bookmarks;") # shows the database table
    result.map { |bookmark| bookmark['url'] } # displays bookmarks in a list
  end



end