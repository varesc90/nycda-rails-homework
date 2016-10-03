class ChangeTypoLongitude < ActiveRecord::Migration
  def change
  	rename_column :hotels, :longtitude, :longitude
  end
end
