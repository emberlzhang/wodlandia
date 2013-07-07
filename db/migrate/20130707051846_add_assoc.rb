class AddAssoc < ActiveRecord::Migration
  def change
    add_column :wods, :workout_id, :integer
    add_column :workouts, :description, :text
  end
end
