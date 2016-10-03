class AddLatitudeAndLongtitudeModel < ActiveRecord::Migration
  def change
  	add_column :hotels, :latitude, :float
  	add_column :hotels, :longtitude, :float
  end
end
