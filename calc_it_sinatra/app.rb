require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  @title = "Welcome to Calc It"
  erb(:home)
end 