class User < ApplicationRecord
    has_secure_password
    has_many :exercises
    has_many :workouts
end
