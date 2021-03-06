class Warframe < ApplicationRecord
  has_many :favorite_warframes, dependent: :destroy
  has_many :users, through: :favorite_warframes
  validates :name, presence: true, length: {maximum: 50}
  validates :image_url, presence: true
  validates :whereToGet, presence: true, length: {minimum: 5}
end
