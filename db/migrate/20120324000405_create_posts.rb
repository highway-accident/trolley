class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :email
      t.string :title
      t.text :text
      t.string :file
      t.datetime :added_at
      t.references :discussion

      t.timestamps
    end
    add_index :posts, :discussion_id
  end
end
