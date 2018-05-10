class FavoriteRelic < ApplicationRecord
  belongs_to :user
  belongs_to :relic
  validates_uniqueness_of :relic_id, scope: :user_id
end
