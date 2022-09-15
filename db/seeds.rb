puts "Clearing old data..."
Meal.destroy_all
Food.destroy_all

puts "Seeding Meals..."

# create meals
Meal.create(name:"Breakfast")
Meal.create(name:"Lunch")
Meal.create(name:"Dinner")
Meal.create(name:"Snack")
Meal.create(name:"Dessert")

puts "Seeding foods..."

# create foods
Food.create(text: "OZERY OneBun Multigrain", meal: Meal.all.sample)
Food.create(text: "BEYOND MEAT The Beyond Burger", meal: Meal.all.sample)
Food.create(text: "TRUE LEAF FARMS Baby Spinach", meal: Meal.all.sample)
Food.create(text: "SPICEWALLA Garlic and Herb Seasoning Blend", meal: Meal.all.sample)

puts "Seeded!"