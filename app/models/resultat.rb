class Resultat < ApplicationRecord
  belongs_to :user
  belongs_to :enfant
  belongs_to :activite
  belongs_to :notation
  belongs_to :video
end
