class CreateFavoriteWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_weapons do |t|
      t.integer :user_id
      t.integer :weapon_id
      t.timestamps
    end
  end
end
