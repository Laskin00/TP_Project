class FavoriteMod < ApplicationRecord
  belongs_to :user
  belongs_to :mod
  validates_uniqueness_of :mod_id, scope: :user_id
end
