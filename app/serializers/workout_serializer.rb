class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes
  
  attribute :workout_exercises do |obj|
    WorkoutExerciseSerializer.new(obj.workout_exercises)
  end
end
