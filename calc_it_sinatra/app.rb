require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative "model/calculator"

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

post "/basic" do
  num1 = params[:num1].to_f
  num2 = params[:num2].to_f
  operation = params[:operation]
  @result = Calculator.basic(num1, num2, operation)
  @title = "Welcome to Basic Calculator"
  erb(:basic)
end

post "/mortgage" do
  loan = params[:loan].to_f
  apr = params[:apr].to_f
  term = params[:term].to_f
  @result = Calculator.mortgage(loan, apr, term)
  @title = "Welcome to Mortgage Calculator"
  erb(:mortgage)
end

post "/bmi" do
  units = params[:units]
  mass = params[:mass].to_f
  height = params[:height].to_f
  @result = Calculator.bmi(units, mass, height)
  @title = "Welcome to BMI Calculator"
  erb(:bmi)
end
