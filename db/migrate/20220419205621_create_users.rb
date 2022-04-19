class CreateUsers < ActiveRecord::Migration[6.1]
  
  def change
    create_table :users do |t|

      t.string :name
      t.string :username
      t.string :password  # *** THIS WILL CHANGE PHASE 4/Rails/Encryption

      t.string :image_URL
      t.string :location

    end
  end

end
