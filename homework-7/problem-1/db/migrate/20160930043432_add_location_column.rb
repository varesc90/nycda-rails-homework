class AddLocationColumn < ActiveRecord::Migration
  def change
  	add_column :hotels, :location, :string
  end
end
