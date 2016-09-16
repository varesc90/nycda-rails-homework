class Address < ActiveRecord::Base
	has_many :user_addresses
	has_many :users, :through => :useraddresses
end
