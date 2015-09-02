require "sinatra"
require_relative "model/translator.rb"

get "/" do
  @title = "Oink Oink translator"
  erb(:home)
end

post "/translate" do
  word = params[:word]
  new_word = Translator.translate(word)
end