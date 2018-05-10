class FavoriteWarframe < ApplicationRecord
  belongs_to :user
  belongs_to :warframe
  validates_uniqueness_of :warframe_id, scope: :user_id
end
