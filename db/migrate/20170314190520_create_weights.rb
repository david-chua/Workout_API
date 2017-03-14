class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.string :exercise_name
      t.integer :set
      t.integer :rep
      t.string :weight
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
