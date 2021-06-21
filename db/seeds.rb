# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

n = User.create(name: "nate", avatar: "undefined", username: "natehains", email: "natehains@yahoo.com", password: "password")
Category.create(name: "Back")
n.exercises.create(name: "Pull-up", instructions: "1. Pull your body up.", category_id: 1)
n.workouts.create(name: "Monday Routine", notes: "8:00am, twice.")
n.workouts.first.workout_exercises.create(exercise_id: 1)
n.workouts.first.workout_exercises.first.set_groups.create(lbs: 170, reps: 12)




