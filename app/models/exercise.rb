class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :workout_exercises
end
