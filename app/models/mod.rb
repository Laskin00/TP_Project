class Mod < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :image_url, presence: true
  validates :whereToGet, presence: true, length: {minimum: 5}
  has_many :favorite_mods, dependent: :destroy
  has_many :users, through: :favorite_mods
#  validates :dropChance, presence:true
end
