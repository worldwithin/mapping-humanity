class CreateWorkImages < ActiveRecord::Migration
  def change
    create_table :work_images do |t|
      t.references :work, index: true, foreign_key: true
      t.string :image, null: false, default: ''

      t.timestamps null: false
    end
  end
end
