class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.integer :light
      t.string :race
      t.string :gender
      t.string :player_class
      t.integer :level
      t.text :player_emblem
      t.integer :user_id

      t.timestamps
    end
  end
end
