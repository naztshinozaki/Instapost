class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :photo
    	t.text :decription
        t.integer :user_id
		t.timestamps null: false
    end
  end
end
