class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.date :datePosted
      t.text :body

      t.timestamps
    end
  end
end
