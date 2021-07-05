# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

n = User.create(name: "nate", avatar: "undefined", username: "natehains", email: "natehains@yahoo.com", password: "password")


Category.create(name: "Back")
n.exercises.create(name: "Back Extension", instructions: "", category_id: 1)
n.exercises.create(name: "Bent Over Row (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Bent Over Row (Dumbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Bent Over Row - Underhand (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Chin-Up", instructions: "", category_id: 1)
n.exercises.create(name: "Deadlift (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Good Morning (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Incline Row (Dumbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Inverted Row (Bodyweight)", instructions: "", category_id: 1)
n.exercises.create(name: "Iso-Lateral Row (Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Kneeling Pulldown (Band)", instructions: "", category_id: 1)
n.exercises.create(name: "Iso-Lateral Row (Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Lat Pulldown (Cable)", instructions: "", category_id: 1)
n.exercises.create(name: "Lat Pulldown (Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Lat Pulldown (Single Arm)", instructions: "", category_id: 1)
n.exercises.create(name: "Lat Pulldown - Underhand (Cable)", instructions: "", category_id: 1)
n.exercises.create(name: "Lat Pulldown - Wide Grip (Cable)", instructions: "", category_id: 1)
n.exercises.create(name: "Pull Up (Assisted)", instructions: "", category_id: 1)
n.exercises.create(name: "Pendlay Row (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Rack Pull (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Romanian Deadlift (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Seated Row (Cable)", instructions: "", category_id: 1)
n.exercises.create(name: "Seated Row (Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Seated Wide-Grip Row (Cable)", instructions: "", category_id: 1)
n.exercises.create(name: "Shrug (Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Shrug (Smith Machine)", instructions: "", category_id: 1)
n.exercises.create(name: "Stiff Leg Deadlift (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Sumo Deadlift (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "T Bar Row", instructions: "", category_id: 1)
n.exercises.create(name: "Upright Row (Barbell)", instructions: "", category_id: 1)
n.exercises.create(name: "Wide Pull Up", instructions: "", category_id: 1)

Category.create(name: "Arms")
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)
n.exercises.create(name: "Bench Press - Close Grip", instructions: "", category_id: 2)





Category.create(name: "Core")
Category.create(name: "Chest")
Category.create(name: "Legs")

Category.create(name: "Shoulders")
Category.create(name: "Other")
Category.create(name: "Cardio")
Category.create(name: "Full Body")




n.workouts.create(name: "Monday Routine", notes: "8:00am, twice.")
n.workouts.first.workout_exercises.create(exercise_id: 1)
n.workouts.first.workout_exercises.first.set_groups.create(lbs: 170, reps: 12)




