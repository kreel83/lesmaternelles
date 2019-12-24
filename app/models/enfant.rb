class Enfant < ApplicationRecord
  belongs_to :user
  has_many :resultats

  mount_uploader :photo, PhotoUploader
end
