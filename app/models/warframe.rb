class Warframe < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :imageURL, presence: true
  validates :whereToGet, presence: true, length: {minimum: 25}
end
