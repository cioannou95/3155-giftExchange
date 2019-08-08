class CreateRoomsAndUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms_and_users, id: false do |t|
      t.belongs_to :room, index: true
      t.belongs_to :part, index: true
    end
  end
end
