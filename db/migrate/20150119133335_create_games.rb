class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :hash
      t.integer :first_move_user_id
      t.integer :last_move_user_id
      t.integer :winner
      t.integer :status
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :games, :hash
    add_index :games, :first_move_user_id
    add_index :games, :last_move_user_id
    add_index :games, :winner
    add_index :games, :status
  end
end
