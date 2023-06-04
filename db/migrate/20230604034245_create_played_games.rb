class CreatePlayedGames < ActiveRecord::Migration[7.0]
  def change
    create_table :played_games do |t|
      t.references(:event, foreign_key: true, type: :integer, null: false)
      t.references(:game, foreign_key: true, type: :integer, null: false)
      t.integer :player_count
      t.string :winner
      t.timestamps
    end
  end
end
