class AddPhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :rake, :string
    add_column :users, :db, :migrate
  end
end
