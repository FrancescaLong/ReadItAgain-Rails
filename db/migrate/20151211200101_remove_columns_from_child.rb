class RemoveColumnsFromChild < ActiveRecord::Migration
	def change
		remove_column :children, :video_id, :integer
		remove_column :children, :user_id, :integer
	end
end