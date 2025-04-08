class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies, id: :uuid do |t|
      t.string :name
      t.string :gender
      t.string :status
      t.string :assessment
      t.text :comment

      t.timestamps
    end
  end
end
