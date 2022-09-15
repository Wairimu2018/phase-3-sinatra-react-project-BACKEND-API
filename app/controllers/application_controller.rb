class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/foods/) && req.get?

      foods = Food.all.map do |food|
        {id: food.id, text: food.text, meal: food.meal.name}
      end

      return [200, { 'Content-Type' => 'application/json' }, [ {:foods => foods}.to_json ]]

    elsif req.path.match(/foods/) && req.post?

      data = JSON.parse req.body.read
      meal = Meal.find_by(name: data["meal"])
      food = Food.create(text: data["text"], meal: meal)

      res_food = {id: food.id, text: food.text, meal: food.meal.name}

      return [200, { 'Content-Type' => 'application/json' }, [ {:food => res_food}.to_json ]]   

    elsif req.delete?

      id = req.path.split("/foods/").last
      Food.find(id).delete

      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "Task deleted!"}.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end