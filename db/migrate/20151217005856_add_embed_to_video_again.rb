class AddEmbedToVideoAgain < ActiveRecord::Migration
  def change
  	add_column :videos, :embed, :string
  end
end
