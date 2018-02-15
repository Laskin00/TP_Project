class CreateRelics < ActiveRecord::Migration[5.1]
  def change
    create_table :relics do |t|
      t.string :name
      t.string :imageUrl
      t.string :whereToGet
      t.double :dropChance

      t.timestamps
    end
  end
end
