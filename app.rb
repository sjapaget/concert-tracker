require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"

require_relative "config/application"
require_relative "models/venue"
require_relative "models/artist"


get "/" do

  @all_venues = Venue.all
  @all_artists = Artist.all

  erb :index
end
