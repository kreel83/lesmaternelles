class Activite < ApplicationRecord
  belongs_to :categorie
  has_many :resultats
end
