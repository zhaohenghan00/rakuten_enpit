class CreateRakutenclips < ActiveRecord::Migration
  def change
    create_table :rakutenclips do |t|
      t.datetime :clipdate
      t.string :itemid
      t.text :comment

      t.timestamps null: false
    end
  end
end
