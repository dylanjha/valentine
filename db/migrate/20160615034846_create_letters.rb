class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :greeting
      t.string :recipient
      t.text :message
      t.text :poem
      t.timestamps null: false
    end
  end
end
