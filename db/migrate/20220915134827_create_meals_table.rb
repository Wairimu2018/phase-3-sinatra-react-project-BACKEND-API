class CreateMealsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
  end
end
end
