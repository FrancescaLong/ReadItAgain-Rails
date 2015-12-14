class AddChildIdToVideos < ActiveRecord::Migration
  def change
  	    remove_column :videos, :child_id, :integer

  	  	add_reference   :videos, :child, index: true
  		add_foreign_key :videos, :children
  end
end
