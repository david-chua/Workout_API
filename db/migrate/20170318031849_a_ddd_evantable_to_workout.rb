class ADddEvantableToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :editable, :boolean, default: true
    add_column :workouts, :stick, :boolean, default: true
    add_column :workouts, :start, :date
    add_column :workouts, :notes, :text
  end
end
