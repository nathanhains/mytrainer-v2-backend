class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes

  attribute :user do |obj|
    FeedUserSerializer.new(obj.user)
  end

  attribute :workout_exercises do |obj|
    WorkoutExerciseSerializer.new(obj.workout_exercises)
  end
end
