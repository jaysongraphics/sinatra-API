class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  # method "URL" 
  get '/'  do
    "Welcome to Artsy"
   end

   get '/painting'  do
    painting_name = Painting(:painting_name)
    # price = Painting.price
    # artist_name = Painting.artist_name
    # gallery_id = Painting.gallery_id
    # buyer_id = Painting.buyer_id

    {painting_name: painting_name}.to_json

    # {painting_name: painting_name, price: price, artist_name: artist_name, gallery_id: gallery_id, buyer_id: buyer_id}.to_json
   end

   get '/buyer'  do
    Buyer.all.to_json
   end

   get '/gallery'  do
    "Paintings on paintings"
   end

   get '/review'  do
    Review.all.to_json
   end

end
