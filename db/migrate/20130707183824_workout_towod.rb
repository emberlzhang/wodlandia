class WorkoutTowod < ActiveRecord::Migration
  def change
    remove_column :posts, :workout_id
    add_column :posts, :wod_id, :integer
  end
end
