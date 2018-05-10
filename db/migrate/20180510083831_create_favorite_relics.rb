class CreateFavoriteRelics < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_relics do |t|
      t.integer :user_id
      t.integer :relic_id
      t.timestamps
    end
  end
end
