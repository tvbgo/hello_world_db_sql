require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require_relative "config/application"

get "/" do
  "Hello world!"
end
