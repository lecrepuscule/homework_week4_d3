require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  @title = "Welcome to Calc It"
  erb(:home)
end 

get "/basic" do
  @title = "Welcome to Basic Calculator"
  erb(:basic)
end 

get "/mortgage" do
  @title = "Welcome to Mortgage Calculator"
  erb(:mortgage)
end 

get "/bmi" do
  @title = "Welcome to BMI Calculator"
  erb(:bmi)
end 

get "/distance" do
  @title = "Welcome to Distance Calculator"
  erb(:distance)
end 