class CreatePersonCategories < ActiveRecord::Migration
  def change
    create_table :person_categories do |t|
      t.references :person, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
