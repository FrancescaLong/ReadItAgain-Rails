class AddSlugToUserChildVideo < ActiveRecord::Migration
	def change
		add_column 	  :users, :slug, :string
		add_index	  :users, :slug, unique: true

		add_column 	  :children, :slug, :string
		add_index	  :children, :slug, unique: true

		add_column 	  :videos, :slug, :string
		add_index	  :videos, :slug, unique: true
	end
end