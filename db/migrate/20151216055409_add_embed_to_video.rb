class AddEmbedToVideo < ActiveRecord::Migration
  def change
  	  	remove_column :videos, :url, :string
  	  	add_column :videos, :embed, :string
  end
end
