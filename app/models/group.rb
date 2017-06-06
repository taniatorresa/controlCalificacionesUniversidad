class Group < ApplicationRecord
  has_many :subjects, dependent: :destroy
  validates :clave_grupo, presence: true
end
