class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    #get all foods
    get "/foods" do 
        Food.all.to_json
    end

     #get food
     get "/food" do
		Foods.all.to_json
    
	end

    get "/food/:id" do
		Food.find(params[:id]).to_json
	end

# get all meals
    get "/meals" do
        Meal.all.to_json
    end

 # get a meal
 get "/meals/:id" do
    meal = Meal.find(params[:id])
    meal .to_json
 end


delete "/meal/:id" do
	meal = Meal.find(params[:id])
	meal.destroy
	
	end

		
	post "/addmeals" do 
		meal = Meal.create(
        name: params[:name]
        )
        meals.to_json
	end

		
	post "/food" do
		food = Food.create(
			text: params[:text],
			meal_id: params[:meal_id],
		)
        foods.to_json
		
	end

	delete "/food/:id" do
		post = Food.find(params[:id]);
		post.destroy.to_json
	end

	patch "/food/:id" do
		post = Food.find(params[:id])
		post.update(
			text: params[:text]
		)
		post.to_json
	end
end
