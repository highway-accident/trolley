class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :slug
      t.boolean :is_visible

      t.timestamps
    end
  end
end
