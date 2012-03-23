class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.datetime :bumped_at
      t.references :board

      t.timestamps
    end
    add_index :discussions, :board_id
  end
end
