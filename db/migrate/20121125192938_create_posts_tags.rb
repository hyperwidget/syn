class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|

      t.timestamps
    end
  end
end
