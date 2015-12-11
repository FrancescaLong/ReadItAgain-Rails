class ChangeSharedDataTypeInVideo < ActiveRecord::Migration
	def change
		remove_column :videos, :shared, :string
		add_column 	  :videos, :shared, :boolean
	end
end