class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :description
      t.string :picture
      t.integer :hit

      t.timestamps
    end
  end
end
