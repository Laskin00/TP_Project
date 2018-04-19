class Relic < ApplicationRecord
  has_many :relic_primepart_connections
  has_many :primeparts, through: :relic_primepart_connections
end
