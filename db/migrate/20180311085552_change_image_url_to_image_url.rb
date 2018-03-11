class ChangeImageUrlToImageUrl < ActiveRecord::Migration[5.1]
  def change
    rename_column :weapons, :imageUrl, :image_url
    rename_column :mods, :imageUrl, :image_url
    rename_column :relics, :imageUrl, :image_url
  end
end
