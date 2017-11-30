class DropRoomsAndUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :rooms_and_users
  end
end
