class RemoveEmbedAddUrl < ActiveRecord::Migration
  def change
  	  	remove_column :videos, :embed, :string
  	  	add_column :videos, :url, :string
  end
end
