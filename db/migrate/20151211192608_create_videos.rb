class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :shared
      t.integer :user_id
      t.integer :child_id

      t.timestamps null: false
    end
  end
end
