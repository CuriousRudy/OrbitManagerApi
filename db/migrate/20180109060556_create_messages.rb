class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :user_id
      t.integer :forum_id

      t.timestamps
    end
  end
end
