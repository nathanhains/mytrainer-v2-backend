class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :instructions
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
