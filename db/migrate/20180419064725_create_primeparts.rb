class CreatePrimeparts < ActiveRecord::Migration[5.1]
  def change
    create_table :primeparts do |t|
      t.string :name
      t.integer :rarity

      t.timestamps
    end
  end
end
