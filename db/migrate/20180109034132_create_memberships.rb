class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.string :user_id
      t.string :clan_id

      t.timestamps
    end
  end
end
