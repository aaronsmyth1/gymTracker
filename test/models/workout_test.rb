require "test_helper"

class WorkoutTest < ActiveSupport::TestCase
 test "workout must have a name " do 
    workout = Workout.new(name: nil)
    assert_not workout.valid?
  end
end
