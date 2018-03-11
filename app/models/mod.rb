class Mod < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :image_url, presence: true
  validates :whereToGet, presence: true, length: {minimum: 5}
#  validates :dropChance, presence:true
end
