class AddPhotoToUser < ActiveRecord::Migration
  def change
  	add_column :users, :photos, :string
  end
end
