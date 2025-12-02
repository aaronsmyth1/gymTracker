json.extract! workout, :id, :exercise, :weight, :reps, :workout_date, :created_at, :updated_at
json.url workout_url(workout, format: :json)
