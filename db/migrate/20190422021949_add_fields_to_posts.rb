class AddFieldsToPosts < ActiveRecord::Migration[5.0]
  def change
  	add_column :posts, :titulo, :text
  	add_column :posts, :reacciones, :integer, array: true, default: []
  	add_index :posts, :user_id
  end
end
