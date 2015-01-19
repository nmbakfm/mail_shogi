class CreateLastBoardStates < ActiveRecord::Migration
  def change
    create_table :last_board_states do |t|
      t.integer :game_id
      t.text :board_state
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :last_board_states, :game_id
  end
end
