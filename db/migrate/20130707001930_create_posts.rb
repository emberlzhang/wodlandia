class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :score
      t.string :photo_url
      t.string :text
      t.belongs_to :user, index: true
      t.belongs_to :workout, index: true

      t.timestamps
    end
  end
end
