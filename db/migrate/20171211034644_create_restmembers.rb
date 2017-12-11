class CreateRestmembers < ActiveRecord::Migration[5.1]
  def change
    create_table :restmembers do |t|
      t.integer :restaurant_id
      t.integer :event_id

      t.timestamps
    end
  end
end
