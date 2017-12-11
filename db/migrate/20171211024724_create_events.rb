class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_location
      t.datetime :event_time
      t.string :event_desc
      t.integer :event_winner
      t.integer :user_id
      t.integer :event_creator
      t.integer :restaurant_id

      t.timestamps
    end
    add_index :events, :user_id
    add_index :events, :restaurant_id

    add_foreign_key :events, :users
    add_foreign_key :events, :restaurants
  end
end
