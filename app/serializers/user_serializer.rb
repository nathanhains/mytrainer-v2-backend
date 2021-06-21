class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :workouts
end
