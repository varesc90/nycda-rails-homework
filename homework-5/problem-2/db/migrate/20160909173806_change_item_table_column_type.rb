class ChangeItemTableColumnType < ActiveRecord::Migration
  def change
  	change_column :items, :price, :interger
  	change_column :items, :quantity, :interger
  end
end
