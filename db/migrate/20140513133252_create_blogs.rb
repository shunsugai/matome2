class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string  :name, null: false
      t.string  :url,  null: false, unique: true
      t.string  :rss,  null: false, unique: true
      t.boolean :show, default: true
      t.integer :category_id

      t.timestamps
    end
  end
end
