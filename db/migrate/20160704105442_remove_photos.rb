class RemovePhotos < ActiveRecord::Migration
  def change
  	remove_column :users, :photos
  	add_column :users, :photo, :string
  end
end
