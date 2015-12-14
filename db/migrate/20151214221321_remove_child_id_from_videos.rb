class RemoveChildIdFromVideos < ActiveRecord::Migration
  def change
  	  	remove_column :videos, :child_id, :integer
  end
end
