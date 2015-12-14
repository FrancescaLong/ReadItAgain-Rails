class AddUserIdToVideos < ActiveRecord::Migration
  def change
    	remove_column :videos, :user_id, :integer

  	  	add_reference   :videos, :user, index: true
  		add_foreign_key :videos, :users
  end
end
