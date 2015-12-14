class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	has_secure_password
	has_many :children
	has_many :videos 
	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
	extend FriendlyId
	friendly_id :name, use: :slugged
	# acts_as_voter - could think about using this to include / show videos?
	
end
