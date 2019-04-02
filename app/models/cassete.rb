class Cassete < ApplicationRecord
  belongs_to :pelicula
  has_many :alquilers
end
