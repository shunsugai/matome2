class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string   :title, null: false
      t.string   :url,   null: false, unique: true
      t.datetime :posted_at
      t.boolean  :show, default: true
      t.integer  :blog_id

      t.timestamps
    end
  end
end
