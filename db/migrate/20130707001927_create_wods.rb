class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
