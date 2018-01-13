class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :gamertag
      t.integer :platform
      t.string :membershipId

      t.timestamps
    end
  end
end
