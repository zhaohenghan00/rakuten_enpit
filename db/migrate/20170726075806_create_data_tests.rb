class CreateDataTests < ActiveRecord::Migration
  def change
    create_table :data_tests do |t|
      t.string :field1
      t.integer :field2
      t.date :field3
      t.float :field4
      t.text :field5

      t.timestamps null: false
    end
  end
end
