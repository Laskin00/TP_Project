class DamageTypesToWeaponTable < ActiveRecord::Migration[5.1]
  def change
      add_column :weapons, :mastery_rank, :string
      add_column :weapons, :attack_type, :string
      add_column :weapons, :impact, :string
      add_column :weapons, :puncture, :string
      add_column :weapons, :slash, :string
      add_column :weapons, :elecricity, :string
      add_column :weapons, :fire, :string
      add_column :weapons, :toxin, :string
      add_column :weapons, :cold, :string
      add_column :weapons, :blast, :string
      add_column :weapons, :corrosive, :string
      add_column :weapons, :gas, :string
      add_column :weapons, :magnetic, :string
      add_column :weapons, :radiation, :string
      add_column :weapons, :viral, :string
  end
end
