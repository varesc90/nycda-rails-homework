class Hotel < ActiveRecord::Base

	geocoded_by :location
	after_validation :geocode

	belongs_to(:user)
	validates(:user_id, presence: true)
	validates(:name, presence: true)
	validates(:location, presence: true)

	has_attached_file(:photo, styles: {thumbnail: '100x100>', full: '300x300>'},
										storage: :s3,
										s3_region: 'us-east-1',
										s3_credentials: {bucket: "vares-hotel-pics",
														 access_key_id: "",
										                 secret_access_key: ""})

	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
