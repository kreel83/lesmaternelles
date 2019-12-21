class Enfant < ApplicationRecord
  belongs_to :user
  has_many :resultats
end
