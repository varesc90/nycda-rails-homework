class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_info

      t.timestamps null: false
    end
  end
end
