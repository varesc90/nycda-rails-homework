class CreateItemInfos < ActiveRecord::Migration
  def change
    create_table :item_infos do |t|
      t.integer :weight
      t.string :dimension
      t.string :condition

      t.timestamps null: false
    end
  end
end
