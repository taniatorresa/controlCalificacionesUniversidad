class Career < ApplicationRecord
 belongs_to :faculty
 has_many :school_cycles,  dependent: :destroy
end
