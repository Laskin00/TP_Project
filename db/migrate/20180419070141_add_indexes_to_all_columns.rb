class AddIndexesToAllColumns < ActiveRecord::Migration[5.1]
  def change
    add_index :relics, :name, unique: true
    add_index :warframes, :name, unique: true
    add_index :primeparts, :name, unique: true
    add_index :mods, :name, unique: true
    add_index :weapons, :name, unique: true
  end
end
