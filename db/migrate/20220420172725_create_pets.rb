class CreatePets < ActiveRecord::Migration[6.1]
  def change

    create_table :pets do |t|

      t.string :name

      # t.integer :user_id
      
      t.belongs_to :user
      # X # t.belongs_to :user_id


    end

  end
end
