class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :fname
      t.text :lname

      t.timestamps
    end
  end
end
