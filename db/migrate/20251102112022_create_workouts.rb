class CreateWorkouts < ActiveRecord::Migration[8.1]
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.integer :weight
      t.integer :reps
      t.date :workout_date

      t.timestamps
    end
  end
end
