class WorkoutExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attribute :exercise do |obj|
    ExerciseSerializer.new(obj.exercise)
  end
  
  attribute :set_groups do |obj|
    SetGroupSerializer.new(obj.set_groups)
  end
end
