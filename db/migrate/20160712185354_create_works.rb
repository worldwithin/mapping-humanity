class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''
      t.string :cover_image
      t.decimal :raised_money, null: false, default: 0.0, precision: 2, scale: 10

      t.timestamps null: false
    end
  end
end
