class CreateFavoriteMods < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_mods do |t|
      t.integer :user_id
      t.integer :mod_id
      t.timestamps
    end
  end
end
