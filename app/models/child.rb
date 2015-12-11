class Child < ActiveRecord::Base
		validates :name, presence: true
	has_many :videos, through: :users
	belongs_to :user
	extend FriendlyId
	FriendlyId :name, use: :slugged

end
