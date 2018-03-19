class AddingHealthArmorMr < ActiveRecord::Migration[5.1]
  def change
    add_column :warframes, :armor, :string
    add_column :warframes, :shield, :string
    add_column :warframes, :mastery_rank, :string
    add_column :warframes, :health, :string
    add_column :warframes, :energy, :string
    add_column :warframes, :description, :string
  end
end
