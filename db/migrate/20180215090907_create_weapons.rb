class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :imageUrl
      t.string :whereToGet
      t.float :dropChance

      t.timestamps
    end
  end
end
