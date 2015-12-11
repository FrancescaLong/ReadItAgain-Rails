class Child < ActiveRecord::Base
	validates :name, presence: true
	has_many :videos
	has_one :user
	extend FriendlyId
	FriendlyId :name, use: :slugged

end