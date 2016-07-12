class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false, default: ''
      t.string :avatar

      t.timestamps null: false
    end
  end
end
