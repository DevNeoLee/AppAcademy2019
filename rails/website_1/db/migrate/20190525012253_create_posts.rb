class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :person
      t.string :photo
      t.text :description
      t.timestamps
    end
  end
end
