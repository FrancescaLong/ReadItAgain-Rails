class AddUserIdToChildren < ActiveRecord::Migration
  def change
  		add_reference   :children, :user, index: true
  		add_foreign_key :children, :users
  end
end
