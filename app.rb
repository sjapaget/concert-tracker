require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"

require_relative "config/application"
require_relative "models/venue"
require_relative "models/artist"

get "/" do
  erb :index
end

get "/artists" do
  @all_artists = Artist.all

  erb :artists
end

get "/artist/:id" do
  @artist = Artist.find(params[:id])

  erb :artist
end
