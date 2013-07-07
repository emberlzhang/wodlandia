class AddHumanapiStatsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight, :integer
    add_column :users, :bmi, :integer
    add_column :users, :body_fat, :integer
    add_column :users, :sleep, :integer
  end
end
