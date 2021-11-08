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

  # post '/load-bookmarks' do
  #   @bookmarks = Bookmarks.new
  #   @bookmarks = bookmarks.all
  #   redirect '/bookmarks'
  # end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new.all
    erb :bookmarks
  end

  run! if app_file == $0
end
