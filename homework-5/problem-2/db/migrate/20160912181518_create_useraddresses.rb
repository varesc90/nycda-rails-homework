class CreateUseraddresses < ActiveRecord::Migration
  def change
    create_table :useraddresses do |t|
      t.integer :user_id
      t.integer :address_id

      t.timestamps null: false
    end
  end
end
