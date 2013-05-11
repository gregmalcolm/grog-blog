class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post
      t.datetime :published_on
      t.string :tags, array: true
      t.hstore :properties

      t.timestamps
    end
  end
end
