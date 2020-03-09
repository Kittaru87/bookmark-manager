require 'sinatra'


class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    'Bookmark Manager'
  end

  run! if app_file == $0

end
