class Album < ActiveRecord::Base
  belongs_to :user
	has_many :favorites
	has_many :userfavs, through: :favorites, source: :user
end
