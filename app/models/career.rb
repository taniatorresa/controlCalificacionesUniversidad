class Career < ApplicationRecord
 belongs_to :faculty
 has_many :school_cycles,  dependent: :destroy

 validates :nombre_carrera, :nombre_abbr, presence: true
end
