class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.integer :lbs
      t.integer :reps

      t.timestamps
    end
  end
end
