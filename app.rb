require("sinatra")
require("sinatra/reloader")
require("./lib/places")

get("/") do
  @places = Place.all()
  erb(:places)
end

post("/") do
  name = params["name"]
  place = Place.new(name)
  place.save()
  @places = Place.all()
  erb(:places)
end

get('/places/:id') do
  @places = Place.find(params[:id])
  erb(:place)
end
