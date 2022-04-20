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




      # LOGIN FLOW 
      post "/login" do

        # binding.pry

        userToLogin = User.find_by( username: params[:username] )
        if userToLogin


          if (  userToLogin.password == params[:password]  )
            return userToLogin.to_json( include: :pets ) # Finall Return Loggined User to FRONTEND
          else
            return { message: " Incorrect Password! >:( "}.to_json
          end


        else
          return { message: " There's No one With that Username! :( "}.to_json
        end

      end




      # C[ R ]UD : [ R ]ead : GET Request : get - ONE User
      ## User Show-Page/Details-Page Flow
      get "/users/:id" do

        # binding.pry

        found_user = User.find_by_id( params[:id] )

        # binding.pry

        found_user.to_json( include: :pets )

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


    # CR[ U ]D : [ U ]pdate : PATCH Request : for ONE User
    patch "/users/:id" do 

      # binding.pry

      user_to_edit = User.find_by_id( params[:id] )

      ## using .save + each attribute from  paramsHash
      # user_to_edit.name = params[:name]
      # user_to_edit.username = params[:username]
      #   user_to_edit.password = params[:password]
      # user_to_edit.image_URL = params[:image_URL]
      # user_to_edit.location = params[:location]
      
      # user_to_edit.save


      ## using .update
      user_to_edit.update( params )

      # binding.pry
      

      #### Different Return Approaches 

        # updated_user = user_to_edit.to_json
        # return updated_user.to_json

        # return updated_user = user_to_edit.to_json

        user_to_edit.to_json

      #### Different Return Approaches 



    end

  #### User Controller Routes




  #### Pet Controller Routes

    post "/pets" do

      newPet = Pet.create(

        name: params[:name],
        user_id: params[:user_id]

      )

      return newPet.to_json

    end


  #### Pet Controller Routes









end
