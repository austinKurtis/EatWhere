class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.text :restaurant_location
      t.text :restaurant_desc
      t.string :restaurant_phone
      t.float :restaurant_price
      t.integer :user_id

      t.timestamps
    end
    add_index :restaurants, :user_id
    add_foreign_key :restaurants, :users
  end
end
