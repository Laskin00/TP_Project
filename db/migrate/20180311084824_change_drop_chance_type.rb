class ChangeDropChanceType < ActiveRecord::Migration[5.1]
  def change
    change_column :weapons, :dropChance, :string
    change_column :mods, :dropChance, :string
    change_column :warframes, :systemsDropChance, :string
    change_column :warframes, :neuropticsDropChance, :string
    change_column :warframes, :chassisDropChance, :string
    change_column :warframes, :blueprintDropChance, :string
  end
end
