class AddUserToWorkouts < ActiveRecord::Migration[8.1]
  def change
    add_reference :workouts, :user, foreign_key: true
  end
end
