require "sinatra"

get "/" do
  @title = "Oink Oink translator"
  erb(:home)
end

post "/translate" do

end