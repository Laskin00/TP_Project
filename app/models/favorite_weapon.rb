class FavoriteWeapon < ApplicationRecord
  belongs_to :user
  belongs_to :weapon
  validates_uniqueness_of :weapon_id, scope: :user_id
end
