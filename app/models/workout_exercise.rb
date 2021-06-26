class WorkoutExercise < ApplicationRecord
    belongs_to :workout
    belongs_to :exercise
    has_many :set_groups, :dependent => :delete_all
end
