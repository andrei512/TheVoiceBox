class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :text
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
