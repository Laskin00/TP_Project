class Relic < ApplicationRecord
  has_many :relic_primepart_connections
  has_many :primeparts, through: :relic_primepart_connections
  has_many :favorite_relics, dependent: :destroy
  has_many :users, through: :favorite_relics
end
