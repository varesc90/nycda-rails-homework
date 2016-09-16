class User < ActiveRecord::Base
	has_many :items
	has_many :useraddresses
	has_many :addresses, :through => :useraddresses
end
