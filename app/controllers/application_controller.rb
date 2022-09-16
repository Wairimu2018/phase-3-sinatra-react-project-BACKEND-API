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


delete "/meals/:id" do
	meal = Meal.find(params[:id])
	meal.destroy
	meal.to_json
	
	end

		
	post "/addmeals" do 
		meal = Meal.create(
        name: params[:name]
        )
        meals.to_json
	end

		
	post "/addfood" do
		food = Food.create(
			text: params[:text],
			meal_id: params[:meal_id],
		)
        foods.to_json
		
	end

	delete "/food/:id" do
		food = Food.find(params[:id]);
		food.destroy.to_json
	end

	patch "/foods/:id" do
		food = Food.find(params[:id])
		food = Food.update(
			text: params[:text]
			)
		food.to_json
# 	end
# else
# 	{status: "error", message: "no food"}
end
end
