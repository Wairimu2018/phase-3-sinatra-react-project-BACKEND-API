class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  #### User Controller Routes


    # C[ R ]UD : [ R ]ead : GET Request : get
    get "/users" do 
    
      User.all.to_json

    end

    # [ C ]RUD : [ C ]reate : POST Request : post
    post "/users" do

        # binding.pry

      newUserOnTheBackend = User.create(  

        name: params[:name] ,
        username: params[:username],
        password: params[:password],

        image_URL: params[:image_URL],
        location: params[:location]

      )

        # binding.pry

      newUserOnTheBackend.to_json

    end


      # C[ R ]UD : [ R ]ead : GET Request : get - ONE User
      ## Later ⏳ : Login Flow
      get "/users/:id" do

        # binding.pry

        found_user = User.find_by_id( params[:id] )

        # binding.pry

        found_user.to_json

      end


    # CRU[ D ] : [ D ]elete : DELETE Request : for ONE User
    delete "/users/:id" do

      user_to_delete = User.find_by_id( params[:id] )
      
        # binding.pry

      user_to_delete.destroy

        # user_to_delete.to_json
        ## if you want to see the Deleted Data on the FRONTEND Again

      { message: "User Account Deleted" }.to_json

    end

  #### User Controller Routes




end
