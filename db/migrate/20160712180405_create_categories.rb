class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ''
      t.boolean :people
      t.boolean :works

      t.timestamps null: false
    end
  end
end
