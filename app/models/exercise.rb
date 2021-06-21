class Exercise < ApplicationRecord
    belongs_to :user
    has_many :workout_exercises
end
