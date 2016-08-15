class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false, default: ''
      t.text :description, null: false, default: ''
      t.string :video
      t.string :link

      t.timestamps null: false
    end
  end
end
