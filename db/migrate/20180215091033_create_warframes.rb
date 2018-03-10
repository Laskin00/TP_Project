class CreateWarframes < ActiveRecord::Migration[5.1]
  def change
    create_table :warframes do |t|
      t.string :name
      t.string :image_url
      t.string :whereToGet
      t.float :neuropticsDropChance
      t.float :chassisDropChance
      t.float :systemsDropChance
      t.float :blueprintDropChance

      t.timestamps
    end
  end
end
