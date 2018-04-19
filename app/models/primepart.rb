class Primepart < ApplicationRecord
  has_many :relic_primepart_connections
  has_many :relics, through: :relic_primepart_connections
end
