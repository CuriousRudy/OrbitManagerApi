class CreateClans < ActiveRecord::Migration[5.1]
  def change
    create_table :clans do |t|
      t.string :name
      t.string :tagline

      t.timestamps
    end
  end
end
