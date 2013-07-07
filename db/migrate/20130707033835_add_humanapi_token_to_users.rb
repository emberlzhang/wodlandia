class AddHumanapiTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :humanapi_token, :string
  end
end
