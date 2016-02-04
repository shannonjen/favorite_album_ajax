class User < ActiveRecord::Base
	has_secure_password
	has_many :albums
	has_many :favorites, foreign_key: :user_id
	has_many :favalbums, through: :favorites, source: :album
end
