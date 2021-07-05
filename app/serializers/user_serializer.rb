class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :avatar

  attribute :workouts do |obj| 
    WorkoutSerializer.new(obj.workouts)
  end

  attribute :followers
  attribute :followees

end