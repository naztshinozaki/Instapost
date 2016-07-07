class ChangeDecriptionToDescription < ActiveRecord::Migration
  	def change
  rename_column :posts, :decription, :description
  end
end
