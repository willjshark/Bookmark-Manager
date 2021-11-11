require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  post '/new_bookmark' do
  Bookmarks.add(new_url: params[:bookmarkURL])
  redirect '/bookmarks'
  
  end

  run! if app_file == $0
end
