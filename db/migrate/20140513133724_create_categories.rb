class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name, unique: true
      t.boolean :show, default: true
      
      t.timestamps
    end
  end
end
