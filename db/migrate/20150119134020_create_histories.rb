class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :game_id
      t.integer :number
      t.string :move
      t.text :message
      t.integer :status
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :histories, :game_id
    add_index :histories, :status
  end
end
