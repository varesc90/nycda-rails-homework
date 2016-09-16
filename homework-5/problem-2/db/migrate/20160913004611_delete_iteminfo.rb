class DeleteIteminfo < ActiveRecord::Migration
  def change
  	drop_table :item_infos
  end
end
