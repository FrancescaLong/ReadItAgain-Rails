class Video < ActiveRecord::Base
	validates :title, presence: true
	# validates :description, allow_blank: true
	validates :url, presence: true
	validates :shared, :inclusion => {:in => [true, false]}
	belongs_to :user
	has_many :children, through: :users
	extend FriendlyId
	friendly_id :title, use: :slugged
end
