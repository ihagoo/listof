class CreateFilmes < ActiveRecord::Migration[8.0]
  def change
    create_table :filmes do |t|
      t.string :name
      t.date :data_launch
      t.string :category
      t.string :assessment
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
