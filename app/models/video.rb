class Video < ActiveRecord::Base
		validates :title, presence: true
	validates :description, allow_blank: true
	validates :url, presence: true
	validates :boolean_shared, presence: true
	belongs_to :user
	has_many :children, through: :users
	extend FriendlyId
	FriendlyId :title, use: :slugged
end
