class DropRoomsUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :rooms_users
  end
end
