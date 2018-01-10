class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :forum_id
      t.integer :user_id
      t.integer :previous_length
      t.integer :current_length
      t.boolean :display

      t.timestamps
    end
  end
end
