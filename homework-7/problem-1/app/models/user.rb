class User < ActiveRecord::Base
has_many(:hotels)
validates(:name, presence: true)
validates(:headline, presence: true)
validates(:profile, presence: true)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
