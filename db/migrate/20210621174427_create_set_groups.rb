class CreateSetGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :set_groups do |t|
      t.integer :lbs
      t.integer :reps
      t.integer :workout_exercise_id
      
      t.timestamps
    end
  end
end
