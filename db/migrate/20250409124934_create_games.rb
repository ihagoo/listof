class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games, id: :uuid do |t|
      t.string :name
      t.string :platform
      t.string :gender
      t.string :status
      t.string :difficulty
      t.string :assessment
      t.text :comment

      t.timestamps
    end
  end
end
