puts "Clearing old data..."
Meal.destroy_all
Food.destroy_all

puts "Seeding Meals..."

# create meals
meal1 = Meal.create(name:"Breakfast")
meal2 = Meal.create(name:"Lunch")


puts "Seeding foods..."

# create foods
food1 = Food.create(text: "OZERY OneBun Multigrain", meal_id: meal1.id)
food2 = Food.create(text: "BEYOND MEAT The Beyond Burger", meal_id: meal2.id)
food3 = Food.create(text: "TRUE LEAF FARMS Baby Spinach", meal_id: meal1.id)
food4 = Food.create(text: "SPICEWALLA Garlic and Herb Seasoning Blend", meal_id: meal2.id)

puts "done seeding"