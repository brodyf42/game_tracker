class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.boolean :stocked, null: false, default: true
      t.timestamps
    end
  end
end
