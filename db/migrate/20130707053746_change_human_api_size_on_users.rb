class ChangeHumanApiSizeOnUsers < ActiveRecord::Migration
  def change
    change_column :users, :humanapi_token, :text
  end
end
