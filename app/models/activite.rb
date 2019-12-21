class Activite < ApplicationRecord
  belongs_to :categorie
  has_many :resultats
  has_many :rejetactivites
end
