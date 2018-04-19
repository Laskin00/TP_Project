class AddTypesToRelicsAndMods < ActiveRecord::Migration[5.1]
  def change
    add_column :mods, :mod_type, :string
  end
end
