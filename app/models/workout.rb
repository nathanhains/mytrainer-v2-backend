class Workout < ApplicationRecord
    belongs_to :user
    has_many :workout_exercises, :dependent => :delete_all
    has_many :exercises, through: :workout_exercises

    validates :name, :user, presence: true
end
