class CreateRelics < ActiveRecord::Migration[5.1]
  def change
    create_table :relics do |t|
      t.string :name
      t.string :image_url
      t.string :whereToGet
      t.string :dropChance
      t.string :relic_type

      t.timestamps
    end
  end
end
