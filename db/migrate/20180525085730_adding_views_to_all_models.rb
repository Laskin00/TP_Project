class AddingViewsToAllModels < ActiveRecord::Migration[5.1]
  def change
    add_column :warframes, :views, :integer, default: 0
    add_column :weapons, :views, :integer, default: 0
    add_column :relics, :views, :integer, default: 0
    add_column :mods, :views, :integer, default: 0
  end
end
