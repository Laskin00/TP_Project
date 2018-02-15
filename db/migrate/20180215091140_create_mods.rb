class CreateMods < ActiveRecord::Migration[5.1]
  def change
    create_table :mods do |t|
      t.string :name
      t.string :imageUrl
      t.string :whereToGet
      t.double :dropChance

      t.timestamps
    end
  end
end
