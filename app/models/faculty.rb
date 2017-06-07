class Faculty < ApplicationRecord
  has_many :careers, dependent: :destroy

  validates :nombre_facultad, presence: true
end
