class CreateCardios < ActiveRecord::Migration[5.0]
  def change
    create_table :cardios do |t|
      t.string :cardio_name
      t.string :time
      t.string :intensity
      t.string :distance
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
