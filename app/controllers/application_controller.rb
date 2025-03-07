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
      Painting.all.to_json
    end
    get '/buyer'  do
      Buyer.all.to_json
    end
    post '/login'  do
       username = params[:username]
       email = params[:email]
       Buyer.find_by(name: username, email: email).to_json
    end
    post '/signup'  do
      params.to_json
      username = params[:username]
      email = params[:email]
    
      Buyer.create(name: username, email: email).to_json
   end
    get '/gallery'  do
      Gallery.all.to_json
    end
    get '/review'  do
      Review.all.to_json
    end


    post '/review' do
      review = Review.create(params)
      review.to_json

    end
    delete '/buyer/:id' do
      Buyer.find_by(id: params[:id]).destroy
    end
end
