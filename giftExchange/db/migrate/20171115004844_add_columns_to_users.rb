class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :email, :string
    add_column :users, :address, :text
    add_column :users, :wish_list, :text
  end
end
