class AddUseridToRestemebers < ActiveRecord::Migration[5.1]
  def change
    add_reference :restmembers, :user, index: true
  end
end
