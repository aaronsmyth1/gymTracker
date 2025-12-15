class Workout < ApplicationRecord
    belongs_to :user

    validates :exercise, presence: true, length: { maximum: 50 }
    validates :weight, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :reps, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :workout_date, presence: true
end
