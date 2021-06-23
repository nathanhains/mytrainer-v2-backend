class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email

  attribute :workouts do |obj|
    WorkoutSerializer.new(obj.workouts)
  end
end
