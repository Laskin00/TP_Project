class CreateWarframes < ActiveRecord::Migration[5.1]
  def change
    create_table :warframes do |t|
      t.string :name
      t.string :imageUrl
      t.string :whereToGet
      t.double :neuropticsDropChance
      t.double :chassisDropChance
      t.double :systemsDropChance
      t.double :blueprintDropChance

      t.timestamps
    end
  end
end
