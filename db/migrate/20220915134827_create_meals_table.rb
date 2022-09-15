class CreateMealsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :nam
  end
end
end
