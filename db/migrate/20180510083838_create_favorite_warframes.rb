class CreateFavoriteWarframes < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_warframes do |t|
      t.integer :user_id
      t.integer :warframe_id
      t.timestamps
    end
  end
end
